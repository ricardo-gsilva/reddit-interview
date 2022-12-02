import 'package:search_reddit/model/comments.model/s_model.dart';

class MediaMetadatum {
    MediaMetadatum({
        this.status,
        this.e,
        this.m,
        this.p,
        this.s,
        this.id,
    });

    final String? status;
    final String? e;
    final String? m;
    final List<S>? p;
    final S? s;
    final String? id;

    factory MediaMetadatum.fromMap(Map<String, dynamic> json) => MediaMetadatum(
        status: json["status"],
        e: json["e"],
        m: json["m"],
        p: List<S>.from(json["p"].map((x) => S.fromMap(x))),
        s: S.fromMap(json["s"]),
        id: json["id"],
    );

    Map<String, dynamic> toMap() => {
        "status": status,
        "e": e,
        "m": m,
        "p": List<dynamic>.from(p!.map((x) => x.toMap())),
        "s": s!.toMap(),
        "id": id,
    };
}