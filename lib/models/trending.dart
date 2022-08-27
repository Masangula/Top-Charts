// To parse this JSON data, do
//
//     final trending = trendingFromJson(jsonString);

import 'dart:convert';

List<Trending> trendingFromJson(String str) => List<Trending>.from(json.decode(str).map((x) => Trending.fromJson(x)));

String trendingToJson(List<Trending> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Trending {
    Trending({
        this.title,
        this.description,
        this.videoId,
        this.videoUrl,
        this.channelName,
        this.channelId,
        this.channelUrl,
        this.thumbnails,
        this.views,
        this.viewsText,
        this.duration,
        this.durationText,
        this.verified,
        this.creatorOnRise,
    });

    String? title;
    String? description;
    String? videoId;
    String? videoUrl;
    String? channelName;
    String? channelId;
    String? channelUrl;
    List<Thumbnail>? thumbnails;
    int? views;
    String? viewsText;
    int? duration;
    String? durationText;
    bool? verified;
    bool? creatorOnRise;

    factory Trending.fromJson(Map<String, dynamic> json) => Trending(
        title: json["title"],
        description: json["description"],
        videoId: json["videoId"],
        videoUrl: json["videoUrl"],
        channelName: json["channelName"],
        channelId: json["channelId"],
        channelUrl: json["channelUrl"],
        thumbnails: List<Thumbnail>.from(json["thumbnails"].map((x) => Thumbnail.fromJson(x))),
        views: json["views"],
        viewsText: json["viewsText"],
        duration: json["duration"],
        durationText: json["durationText"],
        verified: json["verified"],
        creatorOnRise: json["creatorOnRise"],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "description": description,
        "videoId": videoId,
        "videoUrl": videoUrl,
        "channelName": channelName,
        "channelId": channelId,
        "channelUrl": channelUrl,
        "thumbnails": List<dynamic>.from(thumbnails!.map((x) => x.toJson())),
        "views": views,
        "viewsText": viewsText,
        "duration": duration,
        "durationText": durationText,
        "verified": verified,
        "creatorOnRise": creatorOnRise,
    };
}

class Thumbnail {
    Thumbnail({
        this.quality,
        this.url,
        this.width,
        this.height,
    });

    String? quality;
    String? url;
    int? width;
    int? height;

    factory Thumbnail.fromJson(Map<String, dynamic> json) => Thumbnail(
        quality: json["quality"],
        url: json["url"],
        width: json["width"],
        height: json["height"],
    );

    Map<String, dynamic> toJson() => {
        "quality": quality,
        "url": url,
        "width": width,
        "height": height,
    };
}
