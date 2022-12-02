import 'package:search_reddit/model/comments.model/indigo_data_model.dart';

class TentacledChild {
    TentacledChild({
        required this.kind,
        required this.data,
    });

    final String kind;
    final IndigoData data;

    factory TentacledChild.fromMap(Map<String, dynamic> json) => TentacledChild(
        kind: json["kind"],
        data: IndigoData.fromMap(json["data"]),
    );

    Map<String, dynamic> toMap() => {
        "kind": kind,
        "data": data.toMap(),
    };
}