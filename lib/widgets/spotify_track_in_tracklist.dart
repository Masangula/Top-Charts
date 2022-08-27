import 'package:flutter/material.dart';
import 'package:top_charts/colors/palette.dart';

class SpotifyTrackInTracklist extends StatelessWidget {
  final String? imageUrl;
  final String? trackPosition;
  final String? trackTitle;
  final String? trackArtist;
  final String? trend;
  final String? streams;
  const SpotifyTrackInTracklist(
    this.imageUrl,
    this.trackPosition,
    this.trackTitle,
    this.trackArtist,
    this.trend,
    this.streams, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 80,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: Palette.transparentColor,
        ),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              SizedBox(
                height: 55,
                width: 55,
                child: Image.network(
                  imageUrl!,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                trackPosition!,
                style: const TextStyle(
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Palette.textBlack,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              trend == 'sideway'
                  ? const Icon(
                      Icons.minimize,
                      size: 20,
                      color: Palette.textBlack,
                    )
                  : trend == 'up'
                      ? const Icon(Icons.arrow_upward,
                          size: 20, color: Palette.songRecordsColor)
                      : const Icon(Icons.arrow_downward,
                          size: 20, color: Palette.youtubeColor),
              const SizedBox(
                width: 10,
              ),
              Text(
                trackTitle!.length > 26
                    ? trackTitle!.substring(0, 23) + '...'
                    : '$trackTitle-\n$trackArtist',
                style: const TextStyle(
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.normal,
                  fontSize: 12,
                  color: Palette.textBlack,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
               Text(
                'Streams\n$streams',
                style: const TextStyle(
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.normal,
                  fontSize: 8,
                  color: Palette.textBlack,
                ),
              ),
            ]),
            const Divider(
              color: Palette.textBlack,
            ),
          ],
        ),
      ),
    );
  }
}
