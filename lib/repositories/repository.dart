import 'dart:convert';

import 'package:github_repo_search_test/models/model.dart';
import 'package:github_repo_search_test/presentation/consts/consts.dart';
import 'package:http/http.dart' as http;

Future<QueryResult> fetchRepo(String? query, String sort, String order) async {
  var queryParameters = {
    'q': query,
    'sort': sort,
    'order': order,
  };
  var uri = Uri.https(kGitHubUrl, kGitHubApiSearch, queryParameters);

  final response = await http.get(uri);

  if (response.statusCode == 200) {
    var j = jsonDecode(response.body);
    return QueryResult.fromJson(j);
  } else {
    throw Exception('err' + response.statusCode.toString());
  }
}
