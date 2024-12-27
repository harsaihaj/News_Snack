//https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=27449185db354c19bbd56d6deab66da1
import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart';
import 'package:news_snack/model/newsArt.dart';


  class FetchNews {
  static List sourcesId = [
  "abc-news",

  "bbc-news",
  "bbc-sport",

  "business-insider",

  "engadget",
  "entertainment-weekly",
  "espn",
  "espn-cric-info",
  "financial-post",

  "fox-news",
  "fox-sports",
  "globo",
  "google-news",
  "google-news-in",

  "medical-news-today",

  "national-geographic",

  "news24",
  "new-scientist",

  "new-york-magazine",
  "next-big-future",

  "techcrunch",
  "techradar",

  "the-hindu",

  "the-wall-street-journal",

  "the-washington-times",
  "time",
  "usa-today",

  ];

  static Future<NewsArt> fetchNews() async{
    final random = Random();
    var sourceID = sourcesId[random.nextInt(sourcesId.length)];
  Response response = await get(Uri.parse(
      "https://newsapi.org/v2/top-headlines?sources=$sourceID&apiKey=27449185db354c19bbd56d6deab66da1"));


  Map bodyData = jsonDecode(response.body);
  List articles = bodyData["articles"];

    final Newrandom = Random();
    var myArticle = articles[random.nextInt(articles.length)];

    return NewsArt.fromAPItoApp(myArticle);
  }
}