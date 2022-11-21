import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   // Here we take the value from the MyHomePage object that was created by
      //   // the App.build method, and use it to set our appbar title.
      //   title: Text(widget.title),
      // ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(10.0),
            height: 70.0,
            width: double.infinity,
            color: Colors.indigo,
            child: Row(
              children: [
                Text('data'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
