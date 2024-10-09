import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {
  Future<Map<String, dynamic>> getCatFact() async {
    final response = await http.get(Uri.parse('https://catfact.ninja/fact'));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load cat fact');
    }
  }
}