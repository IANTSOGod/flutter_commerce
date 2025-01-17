import 'package:http/http.dart' as http;
import 'dart:convert';

Future<dynamic> fetchJsonData(String url) async {
  try {
    final uri = Uri.parse(url);
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Erreur HTTP : ${response.statusCode}');
    }
  } catch (e) {
    throw Exception('Erreur de connexion : $e');
  }
}
