import 'dart:convert';

import 'package:search_reddit/model/comments.model/comments_model_data.dart';

List<CommentsModel> commentsModelFromMap(String str) => List<CommentsModel>.from(json.decode(str).map((x) => CommentsModel.fromMap(x)));

String commentsModelToMap(List<CommentsModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class CommentsModel {
    CommentsModel({
        required this.kind,
        required this.data,
    });

    final String kind;
    final CommentsModelData data;

    factory CommentsModel.fromMap(Map<String, dynamic> json) => CommentsModel(
        kind: json["kind"],
        data: CommentsModelData.fromMap(json["data"]),
    );

    Map<String, dynamic> toMap() => {
        "kind": kind,
        "data": data.toMap(),
    };

    CommentsModel.empty()
      : kind = '',
      data = CommentsModelData.empty();
}