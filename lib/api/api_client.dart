import 'dart:convert';
import 'dart:developer';

import 'package:rest_api/api/api_config.dart';
import 'package:rest_api/data_model/posts_response.dart';
import 'package:http/http.dart' as http;

class ApiClient {
  Future<void> getPosts() async {
    Uri uri = Uri.parse(ApiConfig.posts);

    final response = await http.get(uri);

    if (response.statusCode == 200) {
      log('Response success');
      var jsonData = jsonDecode(response.body);
      for(dynamic post in jsonData){
        log('Post id = ${post['']}');
      }
    } else {
      log('Response failed');
    }
  }
}
