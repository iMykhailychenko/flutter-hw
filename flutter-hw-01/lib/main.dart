import 'package:flutter/material.dart';

void main() => runApp(CounterApp());

class CounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text('counter app'),
        ),
        body: Container(
          alignment: Alignment.center,
          color: Colors.blueGrey.shade100,
          child: CounterWidget(),
        ),
      ),
    );
  }
}

class CounterWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CounterWidgetState();
  }
}

class _CounterWidgetState extends State<CounterWidget> {
  int _count = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Tap "-" to decrement'),
        Container(
          child: ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    _count += 1;
                  });
                },
                color: Colors.grey.shade500,
                icon: Icon(Icons.plus_one),
              ),
              Text(_count.toString()),
              IconButton(
                onPressed: () {
                  setState(() {
                    _count -= 1;
                  });
                },
                color: Colors.grey.shade500,
                icon: Icon(Icons.exposure_minus_1),
              ),
            ],
          ),
          width: 200,
          margin: EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
            color: Colors.grey.shade400,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Text('Tap "+" to increment')
      ],
    );
  }
}
