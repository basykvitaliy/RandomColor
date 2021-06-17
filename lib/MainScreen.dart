import 'package:flutter/material.dart';
import 'package:flutter_random_color/ColorScreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Color _color = Color(0xFFFFFFFF);
  int _count = 0;

  _updateColor() {
    _color = ColorGenerator.getColor();
  }

  _counterTap() {
    _count++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Random Color"),
          backgroundColor: _color,
          actions: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 26),
              child: Center(
                child: Text("Count: ${_count}",
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
            )
          ],
        ),
        body: GestureDetector(
          onTap: () {
            setState(() {
              _updateColor();
              _counterTap();
            });
          },
          child: Container(
            child: Center(
              child: Text(
                "Hello:)",
                style: TextStyle(color: Colors.white, fontSize: 35),
              ),
            ),
            decoration: BoxDecoration(
              color: _color,
            ),
          ),
        ));
  }
}
