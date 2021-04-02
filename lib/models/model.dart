import 'package:json_annotation/json_annotation.dart';

part 'model.g.dart';

@JsonSerializable(createFactory: true, explicitToJson: true, createToJson: true)
class QueryResult {
  @JsonKey(name: 'total_count')
  int? totalCount;

  @JsonKey(name: 'incompleteResults')
  int? incompleteResults;
  @JsonKey(name: 'items')
  List<RepoItem>? items;
  QueryResult({this.totalCount, this.incompleteResults, this.items});
  factory QueryResult.fromJson(Map<String, dynamic> json) =>
      _$QueryResultFromJson(json);
  Map<String, dynamic> toJson() => _$QueryResultToJson(this);
}

@JsonSerializable(createFactory: true, createToJson: true, explicitToJson: true)
class RepoItem {
  @JsonKey(name: 'full_name', required: true)
  String? fullName;

  @JsonKey(name: 'description', required: true)
  String? description;

  @JsonKey(name: 'avatar_url', required: true)
  Owner? avatarUrl;

  @JsonKey(name: 'stargazers_count', required: true)
  int? stargazersCount;

  RepoItem(
      {this.description, this.fullName, this.avatarUrl, this.stargazersCount});
  factory RepoItem.fromJson(Map<String, dynamic> json) =>
      _$RepoItemFromJson(json);
  Map<String, dynamic> toJson() => _$RepoItemToJson(this);
}

@JsonSerializable(createFactory: true, createToJson: true, explicitToJson: true)
class Owner {
  @JsonKey(name: 'avatar_url', required: true)
  String? avatarUrl;

  Owner({this.avatarUrl});
  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);
  Map<String, dynamic> toJson() => _$OwnerToJson(this);
}
