import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';

import 'package:flutter_mvvm_spike/data/repositories/activity/activity_repository.dart';
import 'package:flutter_mvvm_spike/data/repositories/itinerary_config/itinerary_config_repository.dart';
import 'package:flutter_mvvm_spike/domain/models/activity/activity.dart';
import 'package:flutter_mvvm_spike/domain/models/itinerary_config/itinerary_config.dart';
import 'package:flutter_mvvm_spike/utils/command.dart';
import 'package:flutter_mvvm_spike/utils/result.dart';

class ActivitiesViewmodel extends ChangeNotifier {
  ActivitiesViewmodel({
    required ActivityRepository activityRepository,
    required ItineraryConfigRepository itineraryConfigRepository,
  }) : _activityRepository = activityRepository,
       _itineraryConfigRepository = itineraryConfigRepository {
    loadActivities = PlainCommand(_loadActivities)..execute();
    saveActivities = PlainCommand(_saveActivities);
  }
  final _log = Logger('ActivitiesViewModel');

  final ActivityRepository _activityRepository;
  final ItineraryConfigRepository _itineraryConfigRepository;
  final Set<String> _selectedActivities = <String>{};
  List<Activity> _daytimeActivities = <Activity>[];
  List<Activity> _eveningActivities = <Activity>[];

  /// List of selected [Activity] per destination.
  UnmodifiableSetView<String> get selectedActivities =>
      UnmodifiableSetView(_selectedActivities);

  /// List of daytime [Activity] per destination.
  UnmodifiableListView<Activity> get daytimeActivities =>
      UnmodifiableListView(_daytimeActivities);

  /// List of evening [Activity] per destination.
  UnmodifiableListView<Activity> get eveningActivities =>
      UnmodifiableListView(_eveningActivities);

  /// Load list of [Activity] for a [Destination] by ref.
  late final PlainCommand loadActivities;

  /// Save list [selectedActivities] into itinerary configuration.
  late final PlainCommand saveActivities;

  Future<Result<void>> _loadActivities() async {
    final resultConfig = await _itineraryConfigRepository.getItineraryConfig();
    switch (resultConfig) {
      case Error<ItineraryConfig>():
        _log.warning(
          'Failed to load stored ItineraryConfig',
          resultConfig.error,
        );
        return resultConfig;
      case Ok<ItineraryConfig>():
    }

    final destinationRef = resultConfig.value.destination;
    if (destinationRef == null) {
      _log.severe('Destination missing in ItineraryConfig');
      return Result.error(Exception('Destination not found'));
    }

    _selectedActivities.addAll(resultConfig.value.activities);

    final resultActivities = await _activityRepository.getByDestinations(
      destinationRef,
    );
    switch (resultActivities) {
      case Ok<List<Activity>>():
        {
          _daytimeActivities =
              resultActivities.value
                  .where(
                    (activity) => [
                      TimeOfDay.any,
                      TimeOfDay.morning,
                      TimeOfDay.afternoon,
                    ].contains(activity.timeOfDay),
                  )
                  .toList();

          _eveningActivities =
              resultActivities.value
                  .where(
                    (activity) => [
                      TimeOfDay.evening,
                      TimeOfDay.night,
                    ].contains(activity.timeOfDay),
                  )
                  .toList();

          _log.fine(
            'Activities (daytime: ${_daytimeActivities.length}, '
            'evening: ${_eveningActivities.length}) loaded',
          );
        }
      case Error<List<Activity>>():
        {
          _log.warning('Failed to load activities', resultActivities.error);
        }
    }

    notifyListeners();
    return resultActivities;
  }

  /// Add [Activity] to selected list.
  void addActivity(String activityRef) {
    assert(
      (_daytimeActivities + _eveningActivities).any(
        (activity) => activity.ref == activityRef,
      ),
      'Activity $activityRef not found',
    );
    _selectedActivities.add(activityRef);
    _log.finest('Activity $activityRef added');
    notifyListeners();
  }

  /// Remove [Activity] from selected list.
  void removeActivity(String activityRef) {
    assert(
      (_daytimeActivities + _eveningActivities).any(
        (activity) => activity.ref == activityRef,
      ),
      'Activity $activityRef not found',
    );
    _selectedActivities.remove(activityRef);
    _log.finest('Activity $activityRef removed');
    notifyListeners();
  }

  Future<Result<void>> _saveActivities() async {
    final resultConfig = await _itineraryConfigRepository.getItineraryConfig();
    switch (resultConfig) {
      case Error<ItineraryConfig>():
        _log.warning(
          'Failed to load stored ItineraryConfig',
          resultConfig.error,
        );
        return resultConfig;
      case Ok<ItineraryConfig>():
    }

    final itineraryConfig = resultConfig.value;
    final result = await _itineraryConfigRepository.setItineraryConfig(
      itineraryConfig.copyWith(activities: _selectedActivities.toList()),
    );
    if (result is Error) {
      _log.warning('Failed to store ItineraryConfig', result.error);
    }
    return result;
  }
}
