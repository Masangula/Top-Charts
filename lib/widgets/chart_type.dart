import 'package:flutter/material.dart';
import 'package:top_charts/colors/palette.dart';

class ChartType extends StatelessWidget {
  final String? chartTitle;
  final Color? chartColor;
  final String? chartImageUrl;
  const ChartType( this.chartTitle, this.chartColor, this.chartImageUrl,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Palette.textWhite,
            chartColor!,
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 35,
            width: 35,
            child: Image.asset(
              chartImageUrl!,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            '$chartTitle',
            style: const TextStyle(
              fontFamily: 'Quicksand',
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: Palette.textWhite,

            ),
          ),
        ],
      ),
    );
  }
}
