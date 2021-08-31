// import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class NewsData {
  final dynamic newsArticles;

  NewsData({this.newsArticles});

  factory NewsData.fromJson(Map<dynamic, dynamic> json) {
    return NewsData(newsArticles: json['articles']);
  }
}

Future<NewsData> getNewsArticles(String filter) async {
  String urlDomain = 'https://newsapi.org';
  String urlVersion = '/v2';
  String apiKey = '49afcb3e05554f62842b1dfd630ce594';

  String url = urlDomain + urlVersion + filter + '&country=in&apiKey=' + apiKey;

  final response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    print(response.body);
    return NewsData.fromJson(json.decode(response.body));
  } else {
    print(response.statusCode);
    throw ('exception');
  }
}
