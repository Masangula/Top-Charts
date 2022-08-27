import 'package:flutter/material.dart';
import 'package:top_charts/colors/palette.dart';

class BillboardTrackInTracklist extends StatelessWidget {
  final String? artist;
  final String? title;
  final String? lastWeek;
  final String? rank;
  final String? image;
  final String? peakPosition;
  final String? weeksOnChart;
  const BillboardTrackInTracklist(this.artist, this.title, this.lastWeek,
      this.rank, this.image, this.peakPosition, this.weeksOnChart,
      {Key? key})
      : super(key: key);

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
                  image!,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                rank!,
                style: const TextStyle(
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Palette.textBlack,
                ),
              ),
              lastWeek != '-'
                  ? lastWeek == rank
                      ? const Icon(
                          Icons.minimize,
                          size: 20,
                          color: Palette.textBlack,
                        )
                      : int.parse(lastWeek!) == int.parse(rank!)
                          ? const Icon(Icons.arrow_upward,
                              size: 20, color: Palette.songRecordsColor)
                          : const Icon(Icons.arrow_downward,
                              size: 20, color: Palette.youtubeColor)
                  : const Icon(
                      Icons.minimize,
                      size: 20,
                      color: Palette.textBlack,
                    ),
              Text(
                title!.length > 23 && artist!.length > 20
                    ? title!.substring(0, 20) +
                        '...\n${artist!.substring(0, 20)}'
                    : title!.length < 23 && artist!.length > 20
                        ? title! +
                            '...\n${artist!.substring(0, 20)}'
                        : '$title-\n$artist',
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
                'Weeks\n$weeksOnChart',
                textAlign: TextAlign.center,
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
