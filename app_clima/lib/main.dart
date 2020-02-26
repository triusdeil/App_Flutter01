import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Container(
        child: Scaffold(
          appBar: AppBar(title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.cloud),
              SizedBox(width: 8.0),
              Text('Bienvenido'),
            ],
          ),
          ),
          body: Center (child: Text('Bienvenido')),
        )
        ),
    );
  }
}