class S {
    S({
        this.y,
        this.x,
        this.u,
    });

    final int? y;
    final int? x;
    final String? u;

    factory S.fromMap(Map<String, dynamic> json) => S(
        y: json["y"],
        x: json["x"],
        u: json["u"],
    );

    Map<String, dynamic> toMap() => {
        "y": y,
        "x": x,
        "u": u,
    };
}