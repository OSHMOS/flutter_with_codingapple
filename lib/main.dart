import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var a = 3;
  var name = ['엄마', '아빠', '형'];

  setCnt() {
    setState(() {
      a++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return DialogUI(cnt: a, setCnt: setCnt);
            },
          );
        },
      ),
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, i) {
          return ListTile(
            leading: Icon(Icons.account_circle),
            title: Text(name[i]),
          );
        },
      ),
      bottomNavigationBar: CustomBottomBar(),
    );
  }
}

class DialogUI extends StatelessWidget {
  const DialogUI({super.key, this.cnt, this.setCnt});
  final cnt;
  final setCnt;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Contact'),
      content: TextField(),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('cancel'),
        ),
        TextButton(
          onPressed: () {
            setCnt();
            print(cnt);
          },
          child: Text('ok'),
        ),
      ],
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
