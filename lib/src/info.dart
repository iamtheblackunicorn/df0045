import 'package:flutter/material.dart';

class Info extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: new AppBar(
        iconTheme: IconThemeData(
          color: Color(0xFF000000),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFFFFFFFF),
        title: new Row(
          mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              new Text(
                'Info',
                style: new TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 30
                ),
              ),
            ]
          ),
        ),
      backgroundColor: Color(0xFFFFFFFF),
      body: new Center(
        child: new Column(
          children: <Widget> [
            new SizedBox(height: 150),
            new Padding(
              padding: EdgeInsets.all(20),
              child: new SizedBox(
                width: 400,
                height: 300,
                child: new Card(
                  color: Color(0xFF000000),
                  child: new Column(
                    children: <Widget> [
                      new Padding(
                        padding: EdgeInsets.all(20),
                        child: new Text(
                          'INFO',
                          style: new TextStyle(
                            color:Color(0xFFFFFFFF),
                            fontSize: 30,
                          )
                        )
                      ),
                      new Padding(
                        padding: EdgeInsets.all(20),
                        child: new Text(
                          'DF0045 v.1.0.0 by Alexander Abraham\nlicensed under the MIT license',
                          style: new TextStyle(
                            color:Color(0xFFFFFFFF),
                            fontSize: 30,
                          )
                        )
                      )
                    ]
                  )
                )
              )
            )
          ]
        )
      )
    );
  }
}
