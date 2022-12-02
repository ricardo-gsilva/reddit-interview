class Gildings {
    Gildings({
        this.gid1,
    });

    final int? gid1;

    factory Gildings.fromMap(Map<String, dynamic> json) => Gildings(
        gid1: json["gid_1"],
    );

    Map<String, dynamic> toMap() => {
        "gid_1": gid1,
    };
}