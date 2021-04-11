import 'package:flutter/material.dart';
import 'dart:io';
import 'conv.dart';
import 'info.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: new Center(
        child: new Column(
          children: <Widget> [

            new SizedBox(height: 100),

            new Text(
              'DF0045',
              style: new TextStyle(
                color: Color(0xFF000000),
                fontSize: 40
              )
            ),
            new SizedBox(height: 50),
            new RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25)
              ),
              color: Color(0xFF000000),
              child: new Text(
                'Convert!',
                textAlign: TextAlign.left,
                style: new TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 30
                )
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Converter()
                  ),
                );
              }
            ),
            new SizedBox(height: 30),
            new RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25)
              ),
              color: Color(0xFF000000),
              child: new Text(
                'Info',
                textAlign: TextAlign.left,
                style: new TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 30
                )
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Info()
                  ),
                );
              }
            ),
            new SizedBox(height: 30),
            new RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25)
              ),
              color: Color(0xFF000000),
              child: new Text(
                'Quit',
                textAlign: TextAlign.left,
                style: new TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 30
                )
              ),
              onPressed: () {
                exit(0);
              }
            ),

          ]
        )
      )
    );
  }
}
