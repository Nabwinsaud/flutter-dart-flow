import 'dart:convert';

String text = "<h1>code husle </h1>";
// generating json string from dart map
void main() {
  Map<String, dynamic> users = {
    'name': 'Nabin',
    'age': 19,
    'email': 'codehustle@gmail.com'
  };
  // above map is map we want to convert into json string
  // jsonEncode() is a function which takes map as an argument and returns json string
  String converToJsonString = jsonEncode(users);
  print(htmlEscape.convert(text));
  print(
      htmlEscape.convert(text).replaceAll('&lt;', '<').replaceAll('&gt;', '>'));
  print(
      converToJsonString); // {"name":"Nabin","age":19,"email":"codehustle@gmail.com" }
}


// 