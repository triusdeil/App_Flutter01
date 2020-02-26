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
              Text('Clima'),
            ],
          ),
          ),
          body: new HomePage(),
        )
        ),
    );
  }
  
}
class  HomePage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Column(
        children:<Widget>[
          dayWidget("lunes",Icons.wb_cloudy,"45 °C")
        ]
      );
    }
    Widget dayWidget(String day, IconData iconData, String temp){
      return Card(child:
      Row(children: 
          <Widget>[
            Text(day),
            Icon(iconData),
            Text(temp),
           ],
         )
      );
    }
  }