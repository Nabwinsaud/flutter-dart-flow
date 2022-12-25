import 'dart:convert';

import 'package:http/http.dart' as http;

List<Map<String, dynamic>> data = [];

var users = """{
  "name": "Nabin",
  "age": 19,
  "email": "nabinsaud2059@gmail.com"
}""";

// Map<String, dynamic> decodedData = jsonDecode(users);
// Map<String, dynamic> decodedData = json.decode(users);
Map<String, dynamic> decodedData = jsonDecode(users);

Future<void> fetchData() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
  if (response.statusCode == 200) {
    print(response.body[0]);
    final decodedData = jsonDecode(response.body);
    // data.addAll(decodedData);
  }
}

void main() {
  fetchData();
  print(decodedData['name']);
}
