// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueryResult _$QueryResultFromJson(Map<String, dynamic> json) {
  var list = json['items'] as List;
  List<RepoItem> items = list.map((i) => RepoItem.fromJson(i)).toList();
  return QueryResult(
    totalCount: json['total_count'] as int?,
    incompleteResults: json['incompleteResults'] as int?,
    items: items,
  );
}

Map<String, dynamic> _$QueryResultToJson(QueryResult instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'incompleteResults': instance.incompleteResults,
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

RepoItem _$RepoItemFromJson(Map<String, dynamic> json) {
  var jsonOwner = json['owner'];
  var avOwner = Owner.fromJson(jsonOwner);
  return RepoItem(
    time: json['updated_at'] as String?,
    name: json['name'] as String?,
    fullName: json['full_name'] as String?,
    avatarUrl: avOwner,
    stargazersCount: json['stargazers_count'] as int?,
  );
}

Map<String, dynamic> _$RepoItemToJson(RepoItem instance) => <String, dynamic>{
      'updated_at': instance.time,
      'full_name': instance.fullName,
      'name': instance.name,
      'avatar_url': instance.avatarUrl?.toJson(),
      'stargazers_count': instance.stargazersCount,
    };

Owner _$OwnerFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['avatar_url']);
  return Owner(
    username: json['login'] as String?,
    avatarUrl: json['avatar_url'] as String?,
  );
}

Map<String, dynamic> _$OwnerToJson(Owner instance) => <String, dynamic>{
      'avatar_url': instance.avatarUrl,
      'login': instance.username,
    };
