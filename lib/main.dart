import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.amberAccent,
        ),
        // ignore: prefer_const_constructors
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.lime,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          //backgroundColor: Colors.pink,
          centerTitle: true,
          title: const Text("App Bar"),
        ),
        body: const Text(
          "Merhaba Dünya",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(
            Icons.add_circle_outlined,
            color: Colors.black,
          ),
          //backgroundColor: Colors.orange,
          onPressed: () {
            debugPrint("Butona Tıklandı");
          },
        ),
      ),
    );
  }
}
