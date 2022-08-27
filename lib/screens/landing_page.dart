import 'package:flutter/material.dart';
import 'package:top_charts/colors/palette.dart';
import 'package:top_charts/models/billboard.api.dart';
import 'package:top_charts/screens/billboard_page.dart';
import 'package:top_charts/screens/spotify_charts_page.dart';
import 'package:top_charts/screens/trending_page.dart';
import 'package:top_charts/widgets/chart_type.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Palette.whiteBackground,
      ),
      backgroundColor: Palette.whiteBackground,
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  child: Image.asset(
                    'assets/images/dp.png',
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(
                  width: 18,
                ),
                const Text(
                  'O.T Malafyale',
                  style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Palette.textBlack,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 36,
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: 'search an artist,music and charts',
                hintStyle: TextStyle(
                  fontFamily: 'Quicksand',
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Palette.textWhite,
                ),
                fillColor: Palette.landingPageColor,
                filled: true,
                border: InputBorder.none,
              ),
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: Palette.textWhite,
              ),
              textInputAction: TextInputAction.search,
              cursorColor: Palette.textWhite,
            ),
            const SizedBox(
              height: 19,
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 8,
              ),
              child: Text(
                'MUSIC CHARTS',
                style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Palette.textBlack,
                ),
              ),
            ),
            Flexible(
              child: GridView.count(
                padding: const EdgeInsets.all(8),
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 13,
                children: [
                  GestureDetector(
                    child: const ChartType(
                      'SPOTIFY CHARTS',
                      Palette.spotifyColor,
                      'assets/images/spotifyLogo.png',
                    ),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SpotifyChartsPage()),
                    ),
                  ),
                  GestureDetector(
                    child: const ChartType(
                      'BILLBOARD Hot 100',
                      Palette.billboardColor,
                      'assets/images/billboardLogo.png',
                    ),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BillboardPage()),
                    ),
                  ),
                  const ChartType(
                    'SONG RECORDS',
                    Palette.songRecordsColor,
                    'assets/images/songRecords.png',
                  ),
                  GestureDetector(
                      child: const ChartType(
                        'YOUTUBE TRENDING',
                        Palette.youtubeColor,
                        'assets/images/youtubeLogo.png',
                      ),
                      onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const TrendingPage()),
                          )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
