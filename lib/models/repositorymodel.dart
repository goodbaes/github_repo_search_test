import 'dart:convert';

RepositoryModel repositoryModelFromJson(String str) =>
    RepositoryModel.fromJson(json.decode(str));

String repositoryModelToJson(RepositoryModel data) =>
    json.encode(data.toJson());

class RepositoryModel {
  RepositoryModel({
    this.source,
  });

  Source? source;

  factory RepositoryModel.fromJson(Map<String, dynamic> json) =>
      RepositoryModel(
        source: Source.fromJson(json["source"]),
      );

  Map<String, dynamic> toJson() => {
        "source": source!.toJson(),
      };
}

class Source {
  Source({
    this.updatedAt,
  });

  DateTime? updatedAt;

  factory Source.fromJson(Map<String, dynamic> json) => Source(
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "updated_at": updatedAt!.toIso8601String(),
      };
}
