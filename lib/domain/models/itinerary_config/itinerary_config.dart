import 'package:freezed_annotation/freezed_annotation.dart';

/// Files generated through command `dart run build_runner watch -d`
part 'itinerary_config.freezed.dart';
part 'itinerary_config.g.dart';

@freezed
abstract class ItineraryConfig with _$ItineraryConfig {
  const factory ItineraryConfig({
    /// [Continent] name
    String? continent,

    /// Start date (check in)
    DateTime? startDate,

    /// End date (check out)
    DateTime? endDate,

    /// Number of guests
    int? guests,

    /// Selected [Destination] reference
    String? destination,

    /// Selected [Activity] references
    @Default([]) List<String> activities,
  }) = _ItineraryConfig;

  factory ItineraryConfig.fromJson(Map<String, Object?> json) =>
      _$ItineraryConfigFromJson(json);
}
