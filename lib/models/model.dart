import 'package:github_repo_search_test/models/repositorymodel.dart';
import 'package:github_repo_search_test/repositories/repository.dart';
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

  @JsonKey(name: 'name', required: true)
  String? name;

  @JsonKey(name: 'avatar_url', required: true)
  Owner? avatarUrl;

  @JsonKey(name: 'stargazers_count', required: true)
  int? stargazersCount;

  @JsonKey(name: 'stargazers_count', required: true)
  String? time;

  RepoItem(
      {this.name,
      this.fullName,
      this.avatarUrl,
      this.stargazersCount,
      this.time});
  factory RepoItem.fromJson(Map<String, dynamic> json) =>
      _$RepoItemFromJson(json);
  Map<String, dynamic> toJson() => _$RepoItemToJson(this);
}

@JsonSerializable(createFactory: true, createToJson: true, explicitToJson: true)
class Owner {
  @JsonKey(name: 'avatar_url', required: true)
  String? avatarUrl;
  @JsonKey(name: 'login')
  String? username;

  Owner({this.avatarUrl, this.username});
  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);
  Map<String, dynamic> toJson() => _$OwnerToJson(this);
}

// @JsonSerializable(createFactory: true, createToJson: true, explicitToJson: true)
// class Repository {
//   @JsonKey(name: 'name', required: true)
//   String? name;

//   Repository({this.name});
//   factory Repository.fromJson(Map<String, dynamic> json) =>
//       _$RepositoryFromJson(json);
//   Map<String, dynamic> toJson() => _$RepositoryToJson(this);
// }
