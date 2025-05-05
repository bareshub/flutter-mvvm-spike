import 'package:flutter_mvvm_spike/domain/models/activity/activity.dart';
import 'package:flutter_mvvm_spike/utils/result.dart';

/// Data source for activities.
abstract class ActivityRepository {
  /// Get activities by [Destination] ref.
  Future<Result<List<Activity>>> getByDestinations(String ref);
}
