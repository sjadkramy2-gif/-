import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  final List<String> news = [
    "📢 خبر 1: بطولة جديدة قادمة!",
    "📢 خبر 2: اجتماع أعضاء النادي الأسبوع المقبل.",
    "📢 خبر 3: إضافة معدات جديدة للتدريب.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("الأخبار")),
      body: ListView.builder(
        itemCount: news.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.article, color: Colors.blueGrey),
            title: Text(news[index]),
          );
        },
      ),
    );
  }
}