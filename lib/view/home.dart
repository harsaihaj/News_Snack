import 'package:flutter/material.dart';
import 'package:news_snack/controller/fetchNews.dart';
import 'package:news_snack/model/newsArt.dart';
import 'package:news_snack/view/widgets/NewsContainer.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  late NewsArt newsart;

  GetNews() async{
    newsart = await FetchNews.fetchNews();
    setState(() {

    });
  }
  @override
  void initState() {
    GetNews();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body: PageView.builder(
      scrollDirection: Axis.vertical,
        controller: PageController(initialPage: 0),
        onPageChanged: (value){
        GetNews();
        },
        itemBuilder: (context, index){
          return NewsContainer(imgUrl: newsart.imgUrl, newsHead: newsart.newsHead, newsDes: newsart.newsDes, newsUrl: newsart.newsUrl, newsCon: newsart.newsCon,);
        }),
    );
  }
}
