import 'package:flutter/material.dart';
import 'news_page.dart';
import 'events_page.dart';
import 'members_page.dart';
import 'contact_page.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> sections = [
    {"title": "الأخبار", "icon": Icons.article, "page": NewsPage()},
    {"title": "الفعاليات", "icon": Icons.event, "page": EventsPage()},
    {"title": "الأعضاء", "icon": Icons.group, "page": MembersPage()},
    {"title": "التواصل", "icon": Icons.phone, "page": ContactPage()},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("نادي صقور وادي السحب"),
        centerTitle: true,
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // عمودين
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
        ),
        itemCount: sections.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => sections[index]['page']),
              );
            },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 4,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(sections[index]['icon'], size: 50, color: Colors.blueGrey),
                    SizedBox(height: 10),
                    Text(sections[index]['title'], style: TextStyle(fontSize: 18)),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}