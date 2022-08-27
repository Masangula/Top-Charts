import 'package:http/http.dart' as http;
import 'package:top_charts/models/spotify_track.dart';

// const axios = require("axios");

// const options = {
//   method: 'GET',
//   url: 'https://spotify23.p.rapidapi.com/charts/',
//   params: {type: 'regional', country: 'global', recurrence: 'daily', date: 'latest'},
//   headers: {
//     'X-RapidAPI-Host': 'spotify23.p.rapidapi.com',
//     'X-RapidAPI-Key': '04fa035cc7msh0601142779b09eep165bf3jsne1ed8ef171d6'
//   }
// };

// axios.request(options).then(function (response) {
// 	console.log(response.data);
// }).catch(function (error) {
// 	console.error(error);
// });
class SpotifyChartAPIs {
  static Future<SpotifyTrack> globalTop200() async {
    var uri = Uri.https("spotify23.p.rapidapi.com", "/charts/", {
      "type": 'regional',
      "country": 'global',
      "recurrence": 'daily',
      "date": 'latest'
    });

    final response = await http.get(uri, headers: {
      'X-RapidAPI-Host': 'spotify23.p.rapidapi.com',
      'X-RapidAPI-Key': '04fa035cc7msh0601142779b09eep165bf3jsne1ed8ef171d6',
    });
    var tracklist = spotifyTrackFromJson(response.body);

    return tracklist;
  }

  static Future<SpotifyTrack> viralTop50() async {
    var uri = Uri.https("spotify23.p.rapidapi.com", "/charts/", {
      "type": 'viral',
      "country": 'global',
      "recurrence": 'daily',
      "date": 'latest'
    });

    final response = await http.get(uri, headers: {
      'X-RapidAPI-Host': 'spotify23.p.rapidapi.com',
      'X-RapidAPI-Key': '04fa035cc7msh0601142779b09eep165bf3jsne1ed8ef171d6',
    });
    var tracklist = spotifyTrackFromJson(response.body);

    return tracklist;
  }

  static Future<SpotifyTrack> viralUSTop50() async {
    var uri = Uri.https("spotify23.p.rapidapi.com", "/charts/", {
      "type": 'viral',
      "country": 'us',
      "recurrence": 'daily',
      "date": 'latest'
    });

    final response = await http.get(uri, headers: {
      'X-RapidAPI-Host': 'spotify23.p.rapidapi.com',
      'X-RapidAPI-Key': '04fa035cc7msh0601142779b09eep165bf3jsne1ed8ef171d6',
    });
    var tracklist = spotifyTrackFromJson(response.body);

    return tracklist;
  }

  static Future<SpotifyTrack> usTop200() async {
    var uri = Uri.https("spotify23.p.rapidapi.com", "/charts/", {
      "type": 'regional',
      "country": 'us',
      "recurrence": 'daily',
      "date": 'latest'
    });

    final response = await http.get(uri, headers: {
      'X-RapidAPI-Host': 'spotify23.p.rapidapi.com',
      'X-RapidAPI-Key': '04fa035cc7msh0601142779b09eep165bf3jsne1ed8ef171d6',
    });
    var tracklist = spotifyTrackFromJson(response.body);

    return tracklist;
  }

  static Future<SpotifyTrack> viralUKTop50() async {
    var uri = Uri.https("spotify23.p.rapidapi.com", "/charts/", {
      "type": 'viral',
      "country": 'gb',
      "recurrence": 'daily',
      "date": 'latest'
    });

    final response = await http.get(uri, headers: {
      'X-RapidAPI-Host': 'spotify23.p.rapidapi.com',
      'X-RapidAPI-Key': '04fa035cc7msh0601142779b09eep165bf3jsne1ed8ef171d6',
    });
    var tracklist = spotifyTrackFromJson(response.body);

    return tracklist;
  }

  static Future<SpotifyTrack> ukTop200() async {
    var uri = Uri.https("spotify23.p.rapidapi.com", "/charts/", {
      "type": 'regional',
      "country": 'gb',
      "recurrence": 'daily',
      "date": 'latest'
    });

    final response = await http.get(uri, headers: {
      'X-RapidAPI-Host': 'spotify23.p.rapidapi.com',
      'X-RapidAPI-Key': '04fa035cc7msh0601142779b09eep165bf3jsne1ed8ef171d6',
    });
    var tracklist = spotifyTrackFromJson(response.body);

    return tracklist;
  }

  static Future<SpotifyTrack> viralAETop50() async {
    var uri = Uri.https("spotify23.p.rapidapi.com", "/charts/", {
      "type": 'viral',
      "country": 'ae',
      "recurrence": 'daily',
      "date": 'latest'
    });

    final response = await http.get(uri, headers: {
      'X-RapidAPI-Host': 'spotify23.p.rapidapi.com',
      'X-RapidAPI-Key': '04fa035cc7msh0601142779b09eep165bf3jsne1ed8ef171d6',
    });
    var tracklist = spotifyTrackFromJson(response.body);

    return tracklist;
  }

  static Future<SpotifyTrack> aeTop200() async {
    var uri = Uri.https("spotify23.p.rapidapi.com", "/charts/", {
      "type": 'regional',
      "country": 'ae',
      "recurrence": 'daily',
      "date": 'latest'
    });

    final response = await http.get(uri, headers: {
      'X-RapidAPI-Host': 'spotify23.p.rapidapi.com',
      'X-RapidAPI-Key': '04fa035cc7msh0601142779b09eep165bf3jsne1ed8ef171d6',
    });
    var tracklist = spotifyTrackFromJson(response.body);

    return tracklist;
  }

  static Future<SpotifyTrack> viralCATop50() async {
    var uri = Uri.https("spotify23.p.rapidapi.com", "/charts/", {
      "type": 'viral',
      "country": 'ca',
      "recurrence": 'daily',
      "date": 'latest'
    });

    final response = await http.get(uri, headers: {
      'X-RapidAPI-Host': 'spotify23.p.rapidapi.com',
      'X-RapidAPI-Key': '04fa035cc7msh0601142779b09eep165bf3jsne1ed8ef171d6',
    });
    var tracklist = spotifyTrackFromJson(response.body);

    return tracklist;
  }

  static Future<SpotifyTrack> caTop200() async {
    var uri = Uri.https("spotify23.p.rapidapi.com", "/charts/", {
      "type": 'regional',
      "country": 'ca',
      "recurrence": 'daily',
      "date": 'latest'
    });

    final response = await http.get(uri, headers: {
      'X-RapidAPI-Host': 'spotify23.p.rapidapi.com',
      'X-RapidAPI-Key': '04fa035cc7msh0601142779b09eep165bf3jsne1ed8ef171d6',
    });
    var tracklist = spotifyTrackFromJson(response.body);

    return tracklist;
  }

  static Future<SpotifyTrack> viralEGTop50() async {
    var uri = Uri.https("spotify23.p.rapidapi.com", "/charts/", {
      "type": 'viral',
      "country": 'eg',
      "recurrence": 'daily',
      "date": 'latest'
    });

    final response = await http.get(uri, headers: {
      'X-RapidAPI-Host': 'spotify23.p.rapidapi.com',
      'X-RapidAPI-Key': '04fa035cc7msh0601142779b09eep165bf3jsne1ed8ef171d6',
    });
    var tracklist = spotifyTrackFromJson(response.body);

    return tracklist;
  }

  static Future<SpotifyTrack> egTop200() async {
    var uri = Uri.https("spotify23.p.rapidapi.com", "/charts/", {
      "type": 'regional',
      "country": 'eg',
      "recurrence": 'daily',
      "date": 'latest'
    });

    final response = await http.get(uri, headers: {
      'X-RapidAPI-Host': 'spotify23.p.rapidapi.com',
      'X-RapidAPI-Key': '04fa035cc7msh0601142779b09eep165bf3jsne1ed8ef171d6',
    });
    var tracklist = spotifyTrackFromJson(response.body);

    return tracklist;
  }

  static Future<SpotifyTrack> viralMATop50() async {
    var uri = Uri.https("spotify23.p.rapidapi.com", "/charts/", {
      "type": 'viral',
      "country": 'ma',
      "recurrence": 'daily',
      "date": 'latest'
    });

    final response = await http.get(uri, headers: {
      'X-RapidAPI-Host': 'spotify23.p.rapidapi.com',
      'X-RapidAPI-Key': '04fa035cc7msh0601142779b09eep165bf3jsne1ed8ef171d6',
    });
    var tracklist = spotifyTrackFromJson(response.body);

    return tracklist;
  }

  static Future<SpotifyTrack> maTop200() async {
    var uri = Uri.https("spotify23.p.rapidapi.com", "/charts/", {
      "type": 'regional',
      "country": 'ma',
      "recurrence": 'daily',
      "date": 'latest'
    });

    final response = await http.get(uri, headers: {
      'X-RapidAPI-Host': 'spotify23.p.rapidapi.com',
      'X-RapidAPI-Key': '04fa035cc7msh0601142779b09eep165bf3jsne1ed8ef171d6',
    });
    var tracklist = spotifyTrackFromJson(response.body);

    return tracklist;
  }

  static Future<SpotifyTrack> viralNGTop50() async {
    var uri = Uri.https("spotify23.p.rapidapi.com", "/charts/", {
      "type": 'viral',
      "country": 'ng',
      "recurrence": 'daily',
      "date": 'latest'
    });

    final response = await http.get(uri, headers: {
      'X-RapidAPI-Host': 'spotify23.p.rapidapi.com',
      'X-RapidAPI-Key': '04fa035cc7msh0601142779b09eep165bf3jsne1ed8ef171d6',
    });
    var tracklist = spotifyTrackFromJson(response.body);

    return tracklist;
  }

  static Future<SpotifyTrack> ngTop200() async {
    var uri = Uri.https("spotify23.p.rapidapi.com", "/charts/", {
      "type": 'regional',
      "country": 'ng',
      "recurrence": 'daily',
      "date": 'latest'
    });

    final response = await http.get(uri, headers: {
      'X-RapidAPI-Host': 'spotify23.p.rapidapi.com',
      'X-RapidAPI-Key': '04fa035cc7msh0601142779b09eep165bf3jsne1ed8ef171d6',
    });
    var tracklist = spotifyTrackFromJson(response.body);

    return tracklist;
  }

  static Future<SpotifyTrack> viralSATop50() async {
    var uri = Uri.https("spotify23.p.rapidapi.com", "/charts/", {
      "type": 'viral',
      "country": 'sa',
      "recurrence": 'daily',
      "date": 'latest'
    });

    final response = await http.get(uri, headers: {
      'X-RapidAPI-Host': 'spotify23.p.rapidapi.com',
      'X-RapidAPI-Key': '04fa035cc7msh0601142779b09eep165bf3jsne1ed8ef171d6',
    });
    var tracklist = spotifyTrackFromJson(response.body);

    return tracklist;
  }

  static Future<SpotifyTrack> saTop200() async {
    var uri = Uri.https("spotify23.p.rapidapi.com", "/charts/", {
      "type": 'regional',
      "country": 'sa',
      "recurrence": 'daily',
      "date": 'latest'
    });

    final response = await http.get(uri, headers: {
      'X-RapidAPI-Host': 'spotify23.p.rapidapi.com',
      'X-RapidAPI-Key': '04fa035cc7msh0601142779b09eep165bf3jsne1ed8ef171d6',
    });
    var tracklist = spotifyTrackFromJson(response.body);

    return tracklist;
  }
}
