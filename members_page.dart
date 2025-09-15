import 'package:flutter/material.dart';

class MembersPage extends StatelessWidget {
  final List<String> members = [
    "محمد أحمد",
    "سجاد كرامي",
    "عبدالله سعيد",
    "خالد يوسف",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("الأعضاء")),
      body: ListView.builder(
        itemCount: members.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.person, color: Colors.blueGrey),
            title: Text(members[index]),
          );
        },
      ),
    );
  }
}