import 'package:flutter/material.dart';
import 'package:top_charts/colors/palette.dart';

class SpotifyLoadingPlaceholder extends StatelessWidget {
  const SpotifyLoadingPlaceholder({Key? key}) : super(key: key);

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Palette.billboardColor.withOpacity(0.7),
            width: 200,
            height: 15,
          ),
        const SizedBox(height: 10),
          Flexible(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 100,
                  height: 80,
                  color: Palette.billboardColor.withOpacity(0.7),
                ),
                Container(
                  width: 100,
                  height: 80,
                  color: Palette.billboardColor.withOpacity(0.7),
                ),
                Container(
                  width: 100,
                  height: 80,
                  color: Palette.billboardColor.withOpacity(0.7),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
