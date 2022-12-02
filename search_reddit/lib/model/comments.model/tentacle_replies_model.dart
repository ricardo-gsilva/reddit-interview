import 'package:search_reddit/model/comments.model/indecent_data_model.dart';

class TentacledReplies {
    TentacledReplies({
        required this.kind,
        required this.data,
    });

    final String kind;
    final IndecentData data;

    factory TentacledReplies.fromMap(Map<String, dynamic> json) => TentacledReplies(
        kind: json["kind"],
        data: IndecentData.fromMap(json["data"]),
    );

    Map<String, dynamic> toMap() => {
        "kind": kind,
        "data": data.toMap(),
    };
}