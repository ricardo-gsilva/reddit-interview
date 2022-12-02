import 'package:search_reddit/model/posts.model/posts_model_data.dart';

class PostsModel {
    PostsModel({
        required this.kind,
        required this.data,
    });

    final String kind;
    final PostsModelData data;

    factory PostsModel.fromMap(Map<String, dynamic> json) => PostsModel(
        kind: json["kind"]?? '',
        data: PostsModelData.fromMap(json["data"]),
    );

    Map<String, dynamic> toMap() => {
        "kind": kind,
        "data": data.toMap(),
    };

    PostsModel.empty()
    : kind = '',
    data = PostsModelData.empty();
}
