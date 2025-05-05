import 'dart:convert';

import 'package:flutter/services.dart';

class LocalDataService {
  // TODO mock services

  Future<List<Map<String, dynamic>>> _loadStringAsset(String asset) async {
    final localData = await rootBundle.loadString(asset);
    return (jsonDecode(localData) as List).cast<Map<String, dynamic>>();
  }
}
