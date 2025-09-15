import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("التواصل")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.phone, color: Colors.green),
              title: Text("اتصل بنا: 777777777"),
            ),
            ListTile(
              leading: Icon(Icons.email, color: Colors.red),
              title: Text("البريد: falcons@club.com"),
            ),
          ],
        ),
      ),
    );
  }
}