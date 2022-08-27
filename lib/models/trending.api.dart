import 'package:http/http.dart' as http;
import 'trending.dart';

// const axios = require("axios");

// const options = {
//   method: 'GET',
//   url: 'https://youtube-trending.p.rapidapi.com/trending',
//   params: {country: 'TZ', type: 'music'},
//   headers: {
//     'X-RapidAPI-Host': 'youtube-trending.p.rapidapi.com',
//     'X-RapidAPI-Key': '04fa035cc7msh0601142779b09eep165bf3jsne1ed8ef171d6'
//   }
// };

// axios.request(options).then(function (response) {
// 	console.log(response.data);
// }).catch(function (error) {
// 	console.error(error);
// });

class TrendingApi {
  static Future<List<Trending>> getTrending() async {
    var uri = Uri.https("youtube-trending.p.rapidapi.com", "/trending",
        {"country": "TZ", "type": "music"});

    final response = await http.get(uri, headers: {
      "X-RapidAPI-Host": "youtube-trending.p.rapidapi.com",
      "X-RapidAPI-Key": "04fa035cc7msh0601142779b09eep165bf3jsne1ed8ef171d6",
    });

    var newlist = trendingFromJson(response.body);
    // print(newlist[0].title);
    return newlist;
  }
}
