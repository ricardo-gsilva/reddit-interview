class ResizedIcon {
    ResizedIcon({
        this.url,
        this.width,
        this.height,
    });

    final String? url;
    final int? width;
    final int? height;

    factory ResizedIcon.fromMap(Map<String, dynamic> json) => ResizedIcon(
        url: json["url"],
        width: json["width"],
        height: json["height"],
    );

    Map<String, dynamic> toMap() => {
        "url": url,
        "width": width,
        "height": height,
    };
}
