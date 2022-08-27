import 'package:flutter/material.dart';
import 'package:top_charts/colors/palette.dart';

class SpotifyTrackChartBrief extends StatelessWidget {
   final String imageUrl;
    final String trackPosition;
    final String trackTitle;
    final String trackArtist;
  const SpotifyTrackChartBrief(this.trackPosition,this.trackTitle,this.trackArtist,this.imageUrl,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return Container(
      margin: const EdgeInsets.only(right: 15),
      width: 100,
      height: 80,
      child: Stack(
        children: [
          Image.network(
            imageUrl,
            fit: BoxFit.fill,
          ),
          Container(
            width: 100,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.all(5),
            color: Palette.textBlack.withOpacity(0.5),
            child:  Text(
              '$trackPosition.$trackTitle\n$trackArtist',
              softWrap: true,
              overflow: TextOverflow.clip,
              style: const TextStyle(
                fontFamily: 'Quicksand',
                color: Palette.textWhite,
                fontWeight: FontWeight.w500,
                fontSize: 8,
              ),
            ),
          ),

        ],
        fit: StackFit.expand,
      ),
    );
  }
}
