import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_mvvm_spike/config/assets.dart';
import 'package:flutter_mvvm_spike/domain/models/activity/activity.dart';

class LocalDataService {
  Future<List<Activity>> getActivities() async {
    final json = await _loadStringAsset(Assets.activities);
    return json.map<Activity>(Activity.fromJson).toList();
  }

  Future<List<Map<String, dynamic>>> _loadStringAsset(String asset) async {
    final localData = await rootBundle.loadString(asset);
    return (jsonDecode(localData) as List).cast<Map<String, dynamic>>();
  }
}
