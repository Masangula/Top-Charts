import 'package:flutter/material.dart';
import 'package:top_charts/models/spotify_track.dart';
import 'package:top_charts/widgets/spotify_track_in_tracklist.dart';

import '../colors/palette.dart';

class SpotifyChartTracklist extends StatelessWidget {
  final String chartTitle;
  final List<Content> listOfTracks;
  const SpotifyChartTracklist( this.chartTitle, this.listOfTracks, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Palette.textBlack,
            size: 24,
          ),
          backgroundColor: Palette.textWhite,
          title:  Text(
            chartTitle,
            style: const TextStyle(
              fontFamily: 'Quicksand',
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Palette.textBlack,
            ),
          ),
          elevation: 0,
          centerTitle: true,
          actions: const [
            IconButton(
              onPressed: null,
              icon: Icon(
                Icons.search,
                color: Palette.textBlack,
                size: 24,
              ),
            ),
          ],
        ),
        body: Container(
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Palette.textWhite,
                Palette.spotifyColor,
              ],
            ),
          ),
          child: Expanded(
            child: ListView.builder(
              itemCount: listOfTracks.length,
              itemBuilder: ((context, index) => SpotifyTrackInTracklist(
                    listOfTracks[index].thumbnail,
                    listOfTracks[index].position!.toString(),
                    listOfTracks[index].trackTitle,
                    listOfTracks[index].artists!.first,
                    listOfTracks[index].trend,
                    listOfTracks[index].streams.toString(),
                  )),
            ),
          ),
        ));
  }
}
