import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

import 'SourceModel.dart';

part 'ArticleModel.g.dart';

@JsonSerializable()
class ArticleModel {
  SourceModel source;
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  DateTime publishedAt;
  String content;

  ArticleModel(this.author, this.title, this.description, this.url,
      this.urlToImage, this.publishedAt, this.content, this.source);

  factory ArticleModel.fromJson(Map<String, dynamic> json) =>
      _$ArticleModelFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleModelToJson(this);
}
