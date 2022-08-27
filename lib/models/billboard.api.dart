import 'package:http/http.dart' as http;
import 'package:top_charts/models/billboard_song.dart';
// const axios = require("axios");

// const options = {
//   method: 'GET',
//   url: 'https://billboard2.p.rapidapi.com/hot_100',
//   params: {date: '2022-05-24'},
//   headers: {
//     'X-RapidAPI-Host': 'billboard2.p.rapidapi.com',
//     'X-RapidAPI-Key': '04fa035cc7msh0601142779b09eep165bf3jsne1ed8ef171d6'
//   }
// };

// axios.request(options).then(function (response) {
// 	console.log(response.data);
// }).catch(function (error) {
// 	console.error(error);
// });

class BillboardAPI {
  static Future<List<Billboard>> getBillboardHot100() async {
    var uri = Uri.https(
        "billboard2.p.rapidapi.com", "/hot_100", {'date': '2022-05-24'});

    final response = await http.get(uri, headers: {
      'X-RapidAPI-Host': 'billboard2.p.rapidapi.com',
      'X-RapidAPI-Key': '04fa035cc7msh0601142779b09eep165bf3jsne1ed8ef171d6'
    });

    return billboardFromJson(response.body);
  }
}
