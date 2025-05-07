import 'package:flutter_mvvm_spike/domain/models/itinerary_config/itinerary_config.dart';
import 'package:flutter_mvvm_spike/utils/result.dart';

/// Data source for the current [ItineraryConfig]
abstract class ItineraryConfigRepository {
  /// Get current [ItineraryConfig], may be empty if no configuration started.
  Future<Result<ItineraryConfig>> getItineraryConfig();

  /// Sets [ItineraryConfig], overrides the previous one stored.
  /// Returns Result.Ok if set is successful.
  Future<Result<void>> setItineraryConfig(ItineraryConfig itineraryConfig);
}
