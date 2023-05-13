import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:toon/models/webtoon_model.dart';

class ApiService {
  List<WebtoonModel> webtoonInstances = [];
  final String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";
  final String today = "today";

  Future<List<WebtoonModel>> getTodaysToons() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final List<dynamic> webtoons =
          jsonDecode(response.body); // Verify Api Calling
      for (var webtoon in webtoons) {
        webtoonInstances.add(WebtoonModel.fromJson(webtoon));
      }
      return webtoonInstances;
    }
    throw Error();
  }
}
