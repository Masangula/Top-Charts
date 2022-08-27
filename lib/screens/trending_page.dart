import 'package:flutter/material.dart';
import 'package:top_charts/models/trending.api.dart';
import 'package:top_charts/widgets/trending_item.dart';

import '../colors/palette.dart';
import '../models/trending.dart';

class TrendingPage extends StatefulWidget {
  const TrendingPage({Key? key}) : super(key: key);

  @override
  State<TrendingPage> createState() => _TrendingPageState();
}

class _TrendingPageState extends State<TrendingPage> {
  List<Trending> recentTrending = [];

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
          'Youtube Trending',
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
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Palette.textWhite,
              Palette.youtubeColor,
            ],
          ),
        ),
        child: FutureBuilder(
          future: TrendingApi.getTrending(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              recentTrending = snapshot.data as List<Trending>;
              return ListView.builder(
                itemCount: recentTrending.length,
                itemBuilder: (context, index) => TrendingItem(
                    title: recentTrending[index].title,
                    channelName: recentTrending[index].channelName,
                    views: recentTrending[index].viewsText,
                    thumbnailUrl: recentTrending[index].thumbnails![1].url,rank: (index+1).toString(),),
              );
            }
            return const Center(
                child: CircularProgressIndicator(
              color: Palette.youtubeColor,
            ));
          },
        ),
      ),
    );
  }
}
