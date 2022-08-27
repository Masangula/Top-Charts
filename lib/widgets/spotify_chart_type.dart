import 'package:flutter/material.dart';
import 'package:top_charts/colors/palette.dart';
import 'package:top_charts/models/spotify_track.dart';
import 'package:top_charts/screens/spotify_chart_tracklist.dart';
import 'package:top_charts/widgets/spotify_track_chart_brief.dart';

class SpotifyChartTYpe extends StatelessWidget {
  final String chartTitle;
  final List<Content> listOfTracks;
  const SpotifyChartTYpe(this.chartTitle, this.listOfTracks, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 127,
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 12,
      ),
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        color: Palette.whiteBackground,
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                chartTitle,
                style: const TextStyle(
                  fontFamily: 'Quicksand',
                  color: Palette.textBlack,
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(
                  horizontal: 5,
                  vertical: 2,
                ),
                decoration: const BoxDecoration(color: Palette.textBlack),
                child: GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) =>
                            SpotifyChartTracklist(chartTitle, listOfTracks)),
                  ),
                  child: const Text(
                    "View More",
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      color: Palette.textWhite,
                      fontWeight: FontWeight.normal,
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Flexible(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: listOfTracks.length,
              itemBuilder: (context, index) => SpotifyTrackChartBrief(
                  listOfTracks[index].position!.toString(),
                  listOfTracks[index].trackTitle!,
                  listOfTracks[index].artists!.first,
                  listOfTracks[index].thumbnail!),
            ),
          ),
        ],
      ),
    );
  }
}
