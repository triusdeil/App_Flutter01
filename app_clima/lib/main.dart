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
        header(),
          list()
         ],
         );
    }
    Widget header(){
      return Stack(
          children: <Widget>[
            Container(
              height: 100.0, 
              width: double.infinity,
            child: Image.network("https://i.picsum.photos/id/1018/3914/2935.jpg",
            fit: BoxFit.cover,
            ),
            ),
            Container(
              height: 100.0, 
              width: double.infinity,
              color: Colors.black38,
            ),
            Positioned(
              left: 16.0,
              top: 36.0,
              child: Text("Mordor(Guafal)", 
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold)
                ,),
      ),
      Positioned(
        right: 8.0,
        bottom: 8.0,
        child: Text("32C", style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold)),
      ),
            ],
      );
    }

Widget list(){
  return Padding
      (padding: const EdgeInsets.all(16.0),
      child: Column(
        children:<Widget>[
          dayWidget("lunes",Icons.wb_cloudy,"30 °C"),
          dayWidget("Martes",Icons.wb_cloudy,"35 °C"),
          dayWidget("Miercoles",Icons.wb_sunny,"40 °C"),
          dayWidget("Jueves",Icons.wb_cloudy,"30 °C"),
          dayWidget("Viernes",Icons.wb_sunny,"40 °C")
        ]
      ),
      );
}

    Widget dayWidget(String day, IconData iconData, String temp){
      return Card(
        child: Padding( 
          padding: const EdgeInsets.all(16.0),
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