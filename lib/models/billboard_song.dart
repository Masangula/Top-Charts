// To parse this JSON data, do
//
//     final billboard = billboardFromJson(jsonString);

import 'dart:convert';

List<Billboard> billboardFromJson(String str) => List<Billboard>.from(json.decode(str).map((x) => Billboard.fromJson(x)));

String billboardToJson(List<Billboard> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Billboard {
    Billboard({
        this.artist,
        this.title,
        this.lastWeek,
        this.rank,
        this.award,
        this.image,
        this.peakPosition,
        this.weeksOnChart,
    });

    String? artist;
    String? title;
    String? lastWeek;
    String? rank;
    bool? award;
    String? image;
    String? peakPosition;
    String? weeksOnChart;

    factory Billboard.fromJson(Map<String, dynamic> json) => Billboard(
        artist: json["artist"],
        title: json["title"],
        lastWeek: json["last_week"],
        rank: json["rank"],
        award: json["award"],
        image: json["image"],
        peakPosition: json["peak_position"],
        weeksOnChart: json["weeks_on_chart"],
    );

    Map<String, dynamic> toJson() => {
        "artist": artist,
        "title": title,
        "last_week": lastWeek,
        "rank": rank,
        "award": award,
        "image": image,
        "peak_position": peakPosition,
        "weeks_on_chart": weeksOnChart,
    };
}
