import 'package:flutter/material.dart';
import 'package:top_charts/colors/palette.dart';
import 'package:top_charts/models/spotify_chart.api.dart';
import 'package:top_charts/models/spotify_chart.dart';
import 'package:top_charts/models/spotify_track.dart';
import 'package:top_charts/widgets/spotify_chart_type.dart';
import 'package:top_charts/widgets/spotify_loading_placeholder.dart';

class SpotifyChartsPage extends StatefulWidget {
  const SpotifyChartsPage({Key? key}) : super(key: key);

  @override
  State<SpotifyChartsPage> createState() => _SpotifyChartsPageState();
}

class _SpotifyChartsPageState extends State<SpotifyChartsPage> {
  List<SpotifyChart> spotifyChartList = [];

  @override
  void initState() {
    super.initState();
    getSpotifyCharts();
  }

  void getSpotifyCharts() async {
    spotifyChartList
        .add(SpotifyChart('Global Top 200', SpotifyChartAPIs.globalTop200()));
    spotifyChartList
        .add(SpotifyChart('Top 50 Viral Globally', SpotifyChartAPIs.viralTop50()));
    spotifyChartList
        .add(SpotifyChart('South Africa Top 200', SpotifyChartAPIs.saTop200()));
    spotifyChartList
        .add(SpotifyChart('Top 50 Viral South Africa', SpotifyChartAPIs.viralSATop50()));
    spotifyChartList
        .add(SpotifyChart('Nigeria Top 200', SpotifyChartAPIs.ngTop200()));
    spotifyChartList
        .add(SpotifyChart('Top 50 Viral Nigeria', SpotifyChartAPIs.viralNGTop50()));

    spotifyChartList
        .add(SpotifyChart('US Top 200', SpotifyChartAPIs.usTop200()));
    spotifyChartList
        .add(SpotifyChart('Top 50 viral US', SpotifyChartAPIs.viralUSTop50()));
    spotifyChartList
        .add(SpotifyChart('UK Top 200', SpotifyChartAPIs.ukTop200()));
    spotifyChartList
        .add(SpotifyChart('Top 50 Viral UK', SpotifyChartAPIs.viralUKTop50()));
    spotifyChartList
        .add(SpotifyChart('Canada Top 200', SpotifyChartAPIs.caTop200()));
      spotifyChartList
        .add(SpotifyChart('Top 50 viral Canada', SpotifyChartAPIs.viralCATop50()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Palette.textBlack,
          size: 24,
        ),
        backgroundColor: Palette.textWhite,
        title: const Text(
          'Spotify Charts',
          style: TextStyle(
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
        child: spotifyChartList.isEmpty
            ? const Center(
                child: CircularProgressIndicator(
                  color: Palette.spotifyColor,
                ),
              )
            : Expanded(
                child: ListView.builder(
                    itemCount: spotifyChartList.length,
                    itemBuilder: (context, index) {
                      return FutureBuilder(
                        future: spotifyChartList[index].tracksList,
                        builder: (context, snapshot) {
                          {
                            if (snapshot.hasData) {
                              var chartTracklist =
                                  snapshot.data! as SpotifyTrack;
                              return SpotifyChartTYpe(
                                  spotifyChartList[index].chartTitle!,
                                  chartTracklist.content!);
                            } else {
                              return const SpotifyLoadingPlaceholder();
                            }
                          }
                        },
                      );
                    }),
              ),
      ),
    );
  }
}
