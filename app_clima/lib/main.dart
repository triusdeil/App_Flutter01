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
      return  Column(
        children:<Widget>[
          dayWidget("Lunes",Icons.wb_cloudy,"45 °C"),
          dayWidget("Martes",Icons.wb_sunny,"40 °C"),
          dayWidget("Miercoles",Icons.wb_cloudy,"35 °C"),
          dayWidget("Jueves",Icons.wb_sunny,"45 °C"),
          dayWidget("Viernes",Icons.wb_cloudy,"40 °C")
        ]
      );
    }
    Widget dayWidget(String day, IconData iconData, String temp){
      return Card(
        child: Padding( 
          padding: const EdgeInsets.all(24.0),
         child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:<Widget>[
            Text(day),
            Icon(iconData),
            Text(temp),
           ],
         )
      )
      );
    }
  }