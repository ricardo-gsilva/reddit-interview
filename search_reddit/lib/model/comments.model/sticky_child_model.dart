import 'package:search_reddit/model/comments.model/hilarious_data_model.dart';

class StickyChild {
    StickyChild({
        required this.kind,
        required this.data,
    });

    final String kind;
    final HilariousData data;

    factory StickyChild.fromMap(Map<String, dynamic> json) => StickyChild(
        kind: json["kind"],
        data: HilariousData.fromMap(json["data"]),
    );

    Map<String, dynamic> toMap() => {
        "kind": kind,
        "data": data.toMap(),
    };
}