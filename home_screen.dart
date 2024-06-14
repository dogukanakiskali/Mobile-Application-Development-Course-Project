import 'package:flutter/material.dart';
import 'package:haber_uygulamasi/models/news.dart';
import 'package:haber_uygulamasi/screens/category_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ana Kategoriler'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CategoryScreen(category: 'Spor')),
                );
              },
              child: Text('Spor Haberleri'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CategoryScreen(category: 'Teknoloji')),
                );
              },
              child: Text('Teknoloji Haberleri'),
            ),
          ],
        ),
      ),
    );
  }
}
