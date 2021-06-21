import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather Forecast',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.deepOrange,
        ),
        child: _homeContainer(),
      ),
    );
  }
}

Widget _homeContainer() => Column(
      children: <Widget>[
        _headerWidget(),
        _bodyWidget(),
      ],
    );

Widget _headerWidget() => Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(top: 40, bottom: 15),
      child: Text(
        "Weather Forecast",
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w400,
          decoration: TextDecoration.none,
        ),
      ),
    );

Widget _bodyWidget() => Container(
      alignment: Alignment.center,
      child: _search(),
    );

Widget _search() => Card(
      child: TextField(
        decoration: InputDecoration(
          // border: OutlineInputBorder(),
          icon: Icon(
            Icons.search,
          ),
          labelText: 'Enter City Name',
        ),
      ),
    );
