import 'package:search_reddit/model/comments.model/sticky_child_model.dart';

class IndecentData {
    IndecentData({
        this.after,
        this.dist,
        this.modhash,
        this.geoFilter,
        required this.children,
        this.before,
    });

    final dynamic after;
    final dynamic dist;
    final String? modhash;
    final String? geoFilter;
    final List<StickyChild> children;
    final dynamic before;

    factory IndecentData.fromMap(Map<String, dynamic> json) => IndecentData(
        after: json["after"],
        dist: json["dist"],
        modhash: json["modhash"],
        geoFilter: json["geo_filter"],
        children: List<StickyChild>.from(json["children"].map((x) => StickyChild.fromMap(x))),
        before: json["before"],
    );

    Map<String, dynamic> toMap() => {
        "after": after,
        "dist": dist,
        "modhash": modhash,
        "geo_filter": geoFilter,
        "children": List<dynamic>.from(children.map((x) => x.toMap())),
        "before": before,
    };
}