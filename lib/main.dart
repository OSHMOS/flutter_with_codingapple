import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// stless
class MyApp extends StatelessWidget {
  MyApp({super.key});

  var a = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Text(a.toString()), // 재렌더링이 안되어서 그렇다 표기가 안됩니다.
          onPressed: () {
            a++;
            print(a);
          },
        ),
        appBar: AppBar(
          centerTitle: false,
          title: Text('코딩애플 연락처 앱'),
        ),
        body: ListView.builder(
          itemCount: 300,
          itemBuilder: (context, i) {
            return ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('오스모스'),
            );
          },
        ),
        bottomNavigationBar: CustomBottomBar(),
      ),
    );
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
