// ignore_for_file: unused_field, unused_local_variable, no_leading_underscores_for_local_identifiers, file_names

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class PostData extends StatelessWidget {
  final url = "https://jsonplaceholder.typicode.com/posts";
  final _jsonEncode = [];
  final _jsonDncode = [];

  PostData({super.key});
// Definition de la fonction void
  void fetchPostsData() async {
    final reponse = await get(Uri.parse(url));
    const _jsonData = JsonDecoder();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
