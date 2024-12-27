import 'package:flutter/material.dart';
import 'package:news_snack/view/detail_view.dart';

class NewsContainer extends StatelessWidget {
  String imgUrl;
  String newsHead;
  String newsDes;
  String newsUrl;
  String newsCon;

  NewsContainer({
    super.key,
    required this.imgUrl,
    required this.newsHead,
    required this.newsDes,
    required this.newsCon,

    required this.newsUrl,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
              height: 350,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
              imgUrl),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  newsHead,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  newsDes,
                  style: TextStyle(fontSize: 15, color: Colors.black38),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  newsCon.length>100 ? newsCon.substring(0,100) :
                  "$newsCon.toString().substring(0, newsCon.length - 15)...",
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
          Spacer(),
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailViewScreen(newsUrl: newsUrl)));
                  },
                  child: Text("Read More"))),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}