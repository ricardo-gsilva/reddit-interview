
import 'package:search_reddit/model/posts.model/media_embed_model.dart';
import 'package:search_reddit/model/posts.model/rezed_icon_model.dart';

class Image {
    Image({
        this.source,
        this.resolutions,
        this.variants,
        this.id,
    });

    final ResizedIcon? source;
    final List<ResizedIcon>? resolutions;
    final MediaEmbed? variants;
    final String? id;

    factory Image.fromMap(Map<String, dynamic> json) => Image(
        source: ResizedIcon.fromMap(json["source"]),
        resolutions: List<ResizedIcon>.from(json["resolutions"].map((x) => ResizedIcon.fromMap(x))),
        variants: MediaEmbed.fromMap(json["variants"]),
        id: json["id"],
    );

    Map<String, dynamic> toMap() => {
        "source": source!.toMap(),
        "resolutions": List<dynamic>.from(resolutions!.map((x) => x.toMap())),
        "variants": variants!.toMap(),
        "id": id,
    };
}
