import 'package:search_reddit/model/comments.model/tentacle_data_model.dart';

class FluffyChild {
    FluffyChild({
        required this.kind,
        required this.data,
    });

    final String kind;
    final TentacledData data;

    factory FluffyChild.fromMap(Map<String, dynamic> json) => FluffyChild(
        kind: json["kind"],
        data: TentacledData.fromMap(json["data"]),
    );

    Map<String, dynamic> toMap() => {
        "kind": kind,
        "data": data.toMap(),
    };
}