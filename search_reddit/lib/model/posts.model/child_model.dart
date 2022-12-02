import 'package:search_reddit/model/posts.model/child_model_data.dart';

class Child {
    Child({
        required this.kind,
        required this.data,
    });

    final String kind;
    final ChildData data;

    factory Child.fromMap(Map<String, dynamic> json) => Child(
        kind: json["kind"],
        data: ChildData.fromMap(json["data"]),
    );

    Map<String, dynamic> toMap() => {
        "kind": kind,
        "data": data.toMap(),
    };
}