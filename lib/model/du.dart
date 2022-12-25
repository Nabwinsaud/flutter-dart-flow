import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';

Future<void> fetchData() async {
  final response =
      await http.get(Uri.parse("https://restcountries.com/v3.1/all"));
  // get name
  // flags
  // population
  final decodedData = json.decode(response.body);
  // get name,flags,population
  // print(decodedData[0]['name']['common']);
  // get all the countries name
  File file = File('countries.txt');
  IOSink sink = file.openWrite(mode: FileMode.append);
  for (var i = 0; i < decodedData.length; i++) {
    sink.writeln(decodedData[i]['name']['common']);
    // append this data to countries.txt

    // how tow write file and and append to the new line in dart ?

    // add all the countries name to countries.txt
    // file.writeAsStringSync(decodedData[i]['name']['common'],
    // mode: FileMode.append, flush: true);
    // file.writeAsStringSync(decodedData[i]['name']['common']);

    // print(decodedData[i]['name']['common']);
  }
}

void main() {
  fetchData();
}
