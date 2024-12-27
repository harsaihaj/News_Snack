class NewsArt{
  String imgUrl;
  String newsHead;
  String newsDes;
  String newsCon;
  String newsUrl;

  NewsArt({
    required this.imgUrl,
    required this.newsHead,
    required this.newsDes,
    required this.newsCon,
    required this.newsUrl,
});


  static NewsArt fromAPItoApp(Map<String,dynamic> article){
    return NewsArt(imgUrl: article["urlToImage"] ?? "https://www.shutterstock.com/image-photo/news-phone-tv-broadcast-stream-600nw-2104335548.jpg",
        newsHead: article["title"] ?? "*********",
        newsDes: article["description"]?? "*********",
        newsCon: article["content"]?? "*********",
        newsUrl: article["url"] ?? "https://news.google.com/home?hl=en-IN&gl=IN&ceid=IN:en");
  }
}