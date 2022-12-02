import 'dart:convert';

import 'package:search_reddit/model/posts.model/child_model.dart';

class PostsModelData {
    PostsModelData({
        this.after,
        this.dist,
        this.modhash,
        this.geoFilter,
        required this.children,
        this.before,
    });

    final String? after;
    final int? dist;
    final String? modhash;
    final String? geoFilter;
    final List<Child> children;
    final dynamic? before;

    factory PostsModelData.fromMap(Map<String, dynamic> json) => PostsModelData(
        after: json["after"],
        dist: json["dist"],
        modhash: json["modhash"],
        geoFilter: json["geo_filter"],
        children: List<Child>.from(json["children"].map((x) => Child.fromMap(x))),
        before: json["before"],
    );

    PostsModelData.empty()
      : after = '',
      dist = 0,
      modhash = '',
      geoFilter = '',
      children = [],
      before = '';
      
    Map<String, dynamic> toMap() => {
        "after": after,
        "dist": dist,
        "modhash": modhash,
        "geo_filter": geoFilter,
        "children": List<dynamic>.from(children.map((x) => x.toMap())),
        "before": before,
    };

    String toJson() => json.encode(toMap());

    factory PostsModelData.fromJson(String source) => PostsModelData.fromMap(json.decode(source));
}