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
      initialRoute: '/firstpage',
      routes: {
        '/firstpage': (context) => FirstPage(),
        '/secondpage': (context) => SecondPage()
      },
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Page"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pushNamed(
              context,
              '/secondpage'
            );
          },
          child: const Text("다음 페이지로 이동"),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: const Text("이전 페이지로 이동"),
        ),
      ),
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
      body: myGridView()
    );
  }
}

GridView myGridView() {
  return GridView.count(
    crossAxisCount: 3,
    padding: const EdgeInsets.all(10),
    mainAxisSpacing: 10,
    crossAxisSpacing: 20,
    children: [
      Container(color: Colors.blue[100], child: const Text("1"),),
      Container(color: Colors.blue[200], child: const Text("2"),),
      Container(color: Colors.blue[300], child: const Text("3"),),
      Container(color: Colors.blue[400], child: const Text("4"),),
      Container(color: Colors.blue[500], child: const Text("5"),),
      Container(color: Colors.blue[600], child: const Text("6"),),
      Container(color: Colors.blue[700], child: const Text("7"),)
    ],
  );
}

ListView myListTile() {
  return ListView(
    children: [
      ListTile(
        title: const Text('One-line ListTile'),
        onTap: () {},
      ),
      ListTile(
        title: const Text('With the subtitle & trailing'),
        subtitle: const Text('Using ListTitle'),
        trailing: const Icon(Icons.more_vert),
        onTap: () {},
      ),
      ListTile(
        title: const Text('With the Leading & trailing'),
        leading: const FlutterLogo(size: 40.0,),
        trailing: const Icon(Icons.autorenew),
        onTap: () {},
      ),
      ListTile(
        title: const Text('With the leading, subtitle & trailing'),
        leading: const Icon(Icons.account_box, size: 40,),
        subtitle: const Text('Add Phone Number'),
        trailing: const Icon(Icons.add),
        onTap: () {},
      ),
    ],
  );
}