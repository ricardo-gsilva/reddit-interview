import 'package:search_reddit/model/comments.model/fluffy_data_model.dart';

class PurpleReplies {
    PurpleReplies({
        required this.kind,
        required this.data,
    });

    final String kind;
    final FluffyData data;

    factory PurpleReplies.fromMap(Map<String, dynamic> json) => PurpleReplies(
        kind: json["kind"],
        data: FluffyData.fromMap(json["data"]),
    );

    Map<String, dynamic> toMap() => {
        "kind": kind,
        "data": data.toMap(),
    };
}