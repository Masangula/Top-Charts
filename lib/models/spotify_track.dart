

import 'dart:convert';

SpotifyTrack spotifyTrackFromJson(String str) => SpotifyTrack.fromJson(json.decode(str));

String spotifyTrackToJson(SpotifyTrack data) => json.encode(data.toJson());

class SpotifyTrack {
    SpotifyTrack({
        this.response,
        this.content,
    });

    String? response;
    List<Content>? content;

    factory SpotifyTrack.fromJson(Map<String, dynamic> json) => SpotifyTrack(
        response: json["response"],
        content: List<Content>.from(json["content"].map((x) => Content.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "response": response,
        "content": List<dynamic>.from(content!.map((x) => x.toJson())),
    };
}

class Content {
    Content({
        this.position,
        this.trackTitle,
        this.trackUrl,
        this.trackId,
        this.thumbnail,
        this.artists,
        this.trend,
        this.streams,
    });

    int? position;
    String? trackTitle;
    String? trackUrl;
    String? trackId;
    String? thumbnail;
    List<String>? artists;
    String? trend;
    int? streams;

    factory Content.fromJson(Map<String, dynamic> json) => Content(
        position: json["position"],
        trackTitle: json["track_title"],
        trackUrl: json["track_url"],
        trackId: json["track_id"],
        thumbnail: json["thumbnail"],
        artists: List<String>.from(json["artists"].map((x) => x)),
        trend: json["trend"],
        streams: json["streams"],
    );

    Map<String, dynamic> toJson() => {
        "position": position,
        "track_title": trackTitle,
        "track_url": trackUrl,
        "track_id": trackId,
        "thumbnail": thumbnail,
        "artists": List<dynamic>.from(artists!.map((x) => x)),
        "trend": trend,
        "streams": streams,
    };
}

// class SpotifyTrack {
//   final String? trackTitle;
//   final String? trackArtist;
//   final String? trackPostion;
//   final String? imageUrl;

//   const SpotifyTrack(this.trackTitle,this.trackArtist, this.trackPostion, this.imageUrl);
// }
