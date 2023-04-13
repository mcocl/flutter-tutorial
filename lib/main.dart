import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(title)
      ),
      body: Container(
        margin: const EdgeInsets.all(50),
        padding: const EdgeInsets.all(50),
        color: Colors.amber,
        width: 300,
        height: 300,
        child: const Center(
          // child: Text("Hello Widget", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),)
          // child: Image.asset("images/flutter-logo.png")
          // child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Google-flutter-logo.svg/768px-Google-flutter-logo.svg.png")
          child: Icon(Icons.favorite, color: Colors.red),
        ),
      )
    );
  }
}
