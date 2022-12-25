import 'package:http/http.dart' as http;
import 'dart:convert';

class Countries {
  // String name;
  // Map<String, dynamic> name;
  String capital;
  String region;
  // String flags;
  // Map<String, dynamic> flags;
  int population;

  Countries(
      {required this.capital,
      required this.region,
      // required this.flags,
      required this.population});
//  {"key":"value"}
  factory Countries.fromJson(json) {
    return Countries(
        capital: json['capital'],
        region: json['region'],
        // flags: json['flags']['png'],
        population: json['populaton']);
  }
}

Future<List<Countries>> fetchData() async {
  final response =
      await http.get(Uri.parse("https://restcountries.com/v3.1/all"));
  if (response.statusCode == 200) {
    List countries = json.decode(response.body);
    return countries.map((country) => Countries.fromJson(country)).toList();
  } else {
    throw Exception('failed to load the countries');
  }
}

void main() async {
  final data = await fetchData();
  print(data);
}
