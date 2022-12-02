

import 'package:search_reddit/model/posts.model/image_model.dart';

class Preview {
    Preview({
        this.images,
        this.enabled,
    });

    final List<Image>? images;
    final bool? enabled;

    factory Preview.fromMap(Map<String, dynamic> json) => Preview(
        images: List<Image>.from(json["images"].map((x) => Image.fromMap(x))?? []),
        enabled: json["enabled"]?? false,
    );

    Map<String, dynamic> toMap() => {
        "images": List<dynamic>.from(images!.map((x) => x.toMap())),
        "enabled": enabled,
    };

    Preview.empty()
    : images = [],
    enabled = false;
}