import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.white,
      child: new InkWell(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              "OSSystem Screen Share",
              style: new TextStyle(
                color: Colors.black,
                fontSize: 30.0,
              ),
            ),
            new Text(
              "Changing the way meetings are done!",
              style: new TextStyle(
                color: Colors.blueAccent,
                fontSize: 15.0,
                wordSpacing: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}