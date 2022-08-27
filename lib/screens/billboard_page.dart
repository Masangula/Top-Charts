import 'package:flutter/material.dart';
import 'package:top_charts/colors/palette.dart';
import 'package:top_charts/models/billboard.api.dart';
import 'package:top_charts/models/billboard_song.dart';
import 'package:top_charts/widgets/billboard_track_in_tracklist.dart';

class BillboardPage extends StatefulWidget {
  const BillboardPage({Key? key}) : super(key: key);

  @override
  State<BillboardPage> createState() => _BillboardPageState();
}

class _BillboardPageState extends State<BillboardPage> {
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
          'Billboard Hot 100',
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
        decoration:  BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Palette.textWhite,
              Palette.billboardColor.withOpacity(0.75),
            ],
          ),
        ),
        child: FutureBuilder(
          future: BillboardAPI.getBillboardHot100(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var recentTrending = snapshot.data as List<Billboard>;
              return ListView.builder(
                itemCount: recentTrending.length,
                itemBuilder: (context, index) => BillboardTrackInTracklist(
                  recentTrending[index].artist,
                  recentTrending[index].title,
                  recentTrending[index].lastWeek,
                  recentTrending[index].rank,
                  recentTrending[index].image,
                  recentTrending[index].peakPosition,
                  recentTrending[index].weeksOnChart,
                ),
              );
            }
            return const Center(
                child: CircularProgressIndicator(
              color: Palette.billboardColor,
            ));
          },
        ),
      ),
    );
  }
}
