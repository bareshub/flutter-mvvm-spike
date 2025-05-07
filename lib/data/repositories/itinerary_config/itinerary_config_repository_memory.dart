import 'package:flutter_mvvm_spike/data/repositories/itinerary_config/itinerary_config_repository.dart';
import 'package:flutter_mvvm_spike/domain/models/itinerary_config/itinerary_config.dart';
import 'package:flutter_mvvm_spike/utils/result.dart';

/// In-memory implementation of [ItineraryConfigRepository].
class ItineraryConfigRepositoryMemory implements ItineraryConfigRepository {
  ItineraryConfig? _itineraryConfig;

  @override
  Future<Result<ItineraryConfig>> getItineraryConfig() async {
    return Result.ok(_itineraryConfig ?? const ItineraryConfig());
  }

  @override
  Future<Result<void>> setItineraryConfig(
    ItineraryConfig itineraryConfig,
  ) async {
    _itineraryConfig = itineraryConfig;
    return Result.ok(null);
  }
}
