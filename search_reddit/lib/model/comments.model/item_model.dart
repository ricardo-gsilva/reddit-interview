class Item {
    Item({
        this.mediaId,
        this.id,
    });

    final String? mediaId;
    final int? id;

    factory Item.fromMap(Map<String, dynamic> json) => Item(
        mediaId: json["media_id"],
        id: json["id"],
    );

    Map<String, dynamic> toMap() => {
        "media_id": mediaId,
        "id": id,
    };
}