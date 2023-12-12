import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String _image =
      "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/2019_Chevrolet_Camaro_base%2C_front_11.9.19.jpg/1200px-2019_Chevrolet_Camaro_base%2C_front_11.9.19.jpg";
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
        body: Container(
          margin: EdgeInsets.only(bottom: 8),
          color: Colors.blueAccent,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              rowWidget(),
              rowWidget(),
              rowWidget(),
            ],
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

  Widget rowWidget() {
    return Container(
      //height: 500,
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(top: 8, left: 8, right: 8),
      color: Colors.red,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        //crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          rowContainer(),
          rowContainer(),
          rowContainer(),
          rowContainer(),
        ],
      ),
    );
  }

  Widget rowContainer() {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: Colors.orangeAccent,
        shape: BoxShape.circle,
      ),
      child: const Center(
        child: Icon(
          Icons.home_outlined,
          color: Colors.grey,
          size: 48,
        ),
      ),
    );
  }

  Widget centerWidget() {
    return Center(
      child: Text(
        "Hello World",
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget containerWidget() {
    return Container(
      height: 180, width: 420,
      //alignment: Alignment.bottomCenter,
      /*constraints: BoxConstraints(
          minHeight: 50,
          minWidth: 50,
          maxHeight: 200,
          maxWidth: 200,
        ),*/
      decoration: BoxDecoration(
        color: Colors.black26,
        shape: BoxShape.rectangle, //BoxShape.circle,
        border: Border.all(
          color: Colors.black,
          width: 4,
          style: BorderStyle.solid,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
        image: DecorationImage(
          image: NetworkImage(_image),
          fit: BoxFit.contain,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.85),
            offset: Offset(10, 20),
            blurRadius: 20,
          ),
        ],
      ),
      margin: const EdgeInsets.all(24),
      padding: const EdgeInsets.only(left: 30, top: 50),
      alignment: Alignment.topLeft,
      //color: Colors.pink,
    );
  }

  Widget textWidget() {
    return const Text(
      "Merhaba Dünya",
      style: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold,
        color: Colors.red,
      ),
    );
  }
}
