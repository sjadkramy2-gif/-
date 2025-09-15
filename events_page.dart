import 'package:flutter/material.dart';

class EventsPage extends StatelessWidget {
  final List<String> events = [
    "🏆 بطولة الصقور - 20 سبتمبر",
    "🎉 ملتقى الأعضاء - 1 أكتوبر",
    "📚 دورة تدريبية - 10 أكتوبر",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("الفعاليات")),
      body: ListView.builder(
        itemCount: events.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.event, color: Colors.blueGrey),
            title: Text(events[index]),
          );
        },
      ),
    );
  }
}