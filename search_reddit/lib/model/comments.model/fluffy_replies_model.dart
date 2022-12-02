import 'package:search_reddit/model/comments.model/sticky_data_model.dart';

class FluffyReplies {
    FluffyReplies({
        required this.kind,
        required this.data,
    });

    final String kind;
    final StickyData data;

    factory FluffyReplies.fromMap(Map<String, dynamic> json) => FluffyReplies(
        kind: json["kind"],
        data: StickyData.fromMap(json["data"]),
    );

    Map<String, dynamic> toMap() => {
        "kind": kind,
        "data": data.toMap(),
    };
}
