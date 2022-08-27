import 'package:top_charts/models/spotify_track.dart';

class SpotifyChart {
  final String? chartTitle;
  final Future<SpotifyTrack> tracksList;

  const SpotifyChart(this.chartTitle, this.tracksList);

}
