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

  var objOwner = Owner.fromJson(jsonOwner);
  return RepoItem(
    description: json['description'] as String?,
    fullName: json['full_name'] as String?,
    avatarUrl: objOwner,
    stargazersCount: json['stargazers_count'] as int?,
  );
}

Map<String, dynamic> _$RepoItemToJson(RepoItem instance) => <String, dynamic>{
      'full_name': instance.fullName,
      'description': instance.description,
      'avatar_url': instance.avatarUrl?.toJson(),
      'stargazers_count': instance.stargazersCount,
    };

Owner _$OwnerFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['avatar_url']);
  return Owner(
    avatarUrl: json['avatar_url'] as String?,
  );
}

Map<String, dynamic> _$OwnerToJson(Owner instance) => <String, dynamic>{
      'avatar_url': instance.avatarUrl,
    };
