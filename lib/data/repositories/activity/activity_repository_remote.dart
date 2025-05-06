import 'package:flutter_mvvm_spike/data/repositories/activity/activity_repository.dart';
import 'package:flutter_mvvm_spike/data/services/api/api_client.dart';
import 'package:flutter_mvvm_spike/domain/models/activity/activity.dart';
import 'package:flutter_mvvm_spike/utils/result.dart';

/// Remote data source for [Activity].
/// Implements basic local caching.
class ActivityRepositoryRemote extends ActivityRepository {
  ActivityRepositoryRemote({required ApiClient apiClient})
    : _apiClient = apiClient;

  final ApiClient _apiClient;

  final Map<String, List<Activity>> _cachedData = {};

  @override
  Future<Result<List<Activity>>> getByDestinations(String ref) async {
    if (!_cachedData.containsKey(ref)) {
      final result = await _apiClient.getActivityByDestination(ref);
      if (result is Ok<List<Activity>>) {
        _cachedData[ref] = result.value;
      }
      return result;
    } else {
      return Result.ok(_cachedData[ref]!);
    }
  }
}
