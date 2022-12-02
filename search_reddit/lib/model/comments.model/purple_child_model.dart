import 'package:search_reddit/model/comments.model/purple_data_model.dart';

class PurpleChild {
    PurpleChild({
        required this.kind,
        required this.data,
    });

    final String kind;
    final PurpleData data;

    factory PurpleChild.fromMap(Map<String, dynamic> json) => PurpleChild(
        kind: json["kind"],
        data: PurpleData.fromMap(json["data"]),
    );

    Map<String, dynamic> toMap() => {
        "kind": kind,
        "data": data.toMap(),
    };
}