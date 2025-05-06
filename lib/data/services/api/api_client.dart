import 'dart:convert';
import 'dart:io';

import 'package:flutter_mvvm_spike/domain/models/activity/activity.dart';
import 'package:flutter_mvvm_spike/utils/result.dart';

typedef ClientFactory = HttpClient Function();

class ApiClient {
  ApiClient({String? host, int? port, ClientFactory? clientFactory})
    : _host = host ?? 'localhost',
      _port = port ?? 8080,
      _clientFactory = clientFactory ?? HttpClient.new;

  final String _host;
  final int _port;
  final ClientFactory _clientFactory;

  Future<Result<List<Activity>>> getActivityByDestination(String ref) async {
    final client = _clientFactory();
    try {
      final request = await client.get(
        _host,
        _port,
        '/destination/$ref/activity',
      );

      final response = await request.close();
      if (response.statusCode == 200) {
        final stringData = await response.transform(utf8.decoder).join();
        final json = jsonDecode(stringData) as List<dynamic>;
        final activities =
            json.map((element) => Activity.fromJson(element)).toList();
        return Result.ok(activities);
      } else {
        throw HttpException("Invalid response");
      }
    } on Exception catch (error) {
      return Result.error(error);
    } finally {
      client.close();
    }
  }
}
