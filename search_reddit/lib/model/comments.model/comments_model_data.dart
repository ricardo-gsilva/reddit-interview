import 'package:search_reddit/model/comments.model/purple_child_model.dart';

class CommentsModelData {
    CommentsModelData({
        this.after,
        this.dist,
        this.modhash,
        this.geoFilter,
        required this.children,
        this.before,
    });

    final dynamic after;
    final int? dist;
    final String? modhash;
    final String? geoFilter;
    final List<PurpleChild> children;
    final dynamic before;

    factory CommentsModelData.fromMap(Map<String, dynamic> json) => CommentsModelData(
        after: json["after"],
        dist: json["dist"] == null ? null : json["dist"],
        modhash: json["modhash"],
        geoFilter: json["geo_filter"],
        children: List<PurpleChild>.from(json["children"].map((x) => PurpleChild.fromMap(x))),
        before: json["before"],
    );

    Map<String, dynamic> toMap() => {
        "after": after,
        "dist": dist == null ? null : dist,
        "modhash": modhash,
        "geo_filter": geoFilter,
        "children": List<dynamic>.from(children.map((x) => x.toMap())),
        "before": before,
    };

    CommentsModelData.empty()
      : after = '',
        dist = 0,
        modhash = '',
        geoFilter = '',
        children = [],
        before = '';
}