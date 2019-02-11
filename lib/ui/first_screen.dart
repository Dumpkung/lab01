import 'package:flutter/material.dart';
import 'package:flutter_lab01/ui/detail_screen.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold (
      appBar: AppBar (
        title: Text("First Screen"),
        ),
      body: Center(
        child: FlatButton(
          child: Text("go to second"),
          onPressed: () {
            Navigator.push(
                context, 
                MaterialPageRoute (
                  builder: (context) => DetailScreen(title: "Hello"),
                ),
            );
          },
        )
      ),
    );
  }

}