import 'package:search_reddit/model/comments.model/tentacle_child_model.dart';

class StickyData {
    StickyData({
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
    final List<TentacledChild> children;
    final dynamic before;

    factory StickyData.fromMap(Map<String, dynamic> json) => StickyData(
        after: json["after"],
        dist: json["dist"],
        modhash: json["modhash"],
        geoFilter: json["geo_filter"],
        children: List<TentacledChild>.from(json["children"].map((x) => TentacledChild.fromMap(x))),
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