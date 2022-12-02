import 'package:search_reddit/model/comments.model/fluffy_child_model.dart';

class FluffyData {
    FluffyData({
        this.after,
        this.dist,
        this.modhash,
        this.geoFilter,
        this.children,
        this.before,
    });

    final dynamic after;
    final dynamic dist;
    final String? modhash;
    final String? geoFilter;
    final List<FluffyChild>? children;
    final dynamic before;

    factory FluffyData.fromMap(Map<String, dynamic> json) => FluffyData(
        after: json["after"],
        dist: json["dist"],
        modhash: json["modhash"],
        geoFilter: json["geo_filter"],
        children: List<FluffyChild>.from(json["children"].map((x) => FluffyChild.fromMap(x))),
        before: json["before"],
    );

    Map<String, dynamic> toMap() => {
        "after": after,
        "dist": dist,
        "modhash": modhash,
        "geo_filter": geoFilter,
        "children": List<dynamic>.from(children!.map((x) => x.toMap())),
        "before": before,
    };
}