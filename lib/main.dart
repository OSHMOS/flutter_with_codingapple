import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// stless
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text('코딩애플 연락처 앱'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('홍길동'),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('홍길동'),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('홍길동'),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomBar(),
    ));
  }
}

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.phone)),
          IconButton(onPressed: () {}, icon: Icon(Icons.message)),
          IconButton(onPressed: () {}, icon: Icon(Icons.contact_page)),
        ],
      ),
    );
  }
}
