import 'package:search_reddit/model/comments.model/item_model.dart';

class GalleryData {
    GalleryData({
        required this.items,
    });

    final List<Item> items;

    factory GalleryData.fromMap(Map<String, dynamic> json) => GalleryData(
        items: List<Item>.from(json["items"].map((x) => Item.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "items": List<dynamic>.from(items.map((x) => x.toMap())),
    };
}