import 'package:flutter_mvvm_spike/data/repositories/activity/activity_repository.dart';
import 'package:flutter_mvvm_spike/data/services/local/local_data_service.dart';
import 'package:flutter_mvvm_spike/domain/models/activity/activity.dart';
import 'package:flutter_mvvm_spike/utils/result.dart';

class ActivityRepositoryLocal implements ActivityRepository {
  ActivityRepositoryLocal({required LocalDataService localDataService})
    : _localDataService = localDataService;

  final LocalDataService _localDataService;

  @override
  Future<Result<List<Activity>>> getByDestinations(String ref) async {
    try {
      final activities =
          (await _localDataService.getActivities())
              .where((activity) => activity.destinationRef == ref)
              .toList();

      return Result.ok(activities);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }
}
