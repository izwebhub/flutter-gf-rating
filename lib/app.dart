import 'package:flutter/material.dart';
import 'package:getflutter/components/rating/gf_rating.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _rating = 1;

  double count = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Rating App"),
        ),
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GFRating(
                  size: 34.0,
                  color: Colors.red,
                  value: _rating,
                  onChanged: (value) {
                    setState(() {
                      _rating = value;
                    });
                  },
                ),
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      _rating = count++;
                    });
                  },
                  child: Text("Click Me"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
