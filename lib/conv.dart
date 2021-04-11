import 'package:flutter/material.dart';

class Converter extends StatefulWidget{
  @override
  ConverterState createState() => ConverterState();
}

class ConverterState extends State<Converter>{
  @override
  Widget build(BuildContext context){
    TextEditingController textController = new TextEditingController();
    return Scaffold(
      body: new Center(
        child: new Column(
          children: <Widget> [

            new Padding(
              padding: EdgeInsets.all(20),
              child: new SizedBox(
                width: 500,
                height: 200,
                child: new Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)
                  ),
                  color: Color(0xFF000000),
                  child: new Padding(
                    padding: EdgeInsets.all(20),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget> [

                        new Column(
                          children: <Widget> [
                            new SizedBox(height: 40),
                            new Text(
                              'HELLO!',
                              textAlign: TextAlign.left,
                              style: new TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 20
                              )
                            ),
                            new Text(
                              'HELLO!',
                              textAlign: TextAlign.left,
                              style: new TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 30
                              )
                            )
                          ]
                        ),

                        new SizedBox(width: 70),

                        new Column(
                          children: <Widget> [
                            new SizedBox(height: 40),
                            new Text(
                              'HELLO!',
                              textAlign: TextAlign.left,
                              style: new TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 20
                              )
                            ),
                            new Text(
                              'HELLO!',
                              textAlign: TextAlign.left,
                              style: new TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 30
                              )
                            )
                          ]
                        )

                      ]
                    )
                  )
                )
              )
            ),

            new Padding(
              padding: EdgeInsets.all(20),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget> [
                  new RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)
                    ),
                    color: Color(0xFF000000),
                    child: new Text(
                      'HELLO!',
                      textAlign: TextAlign.left,
                      style: new TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 30
                      )
                    )
                  ),

                  new RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)
                    ),
                    color: Color(0xFF000000),
                    child: new Text(
                      'HELLO!',
                      textAlign: TextAlign.left,
                      style: new TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 30
                      )
                    )
                  ),

                ]
              )
            ),

            new Padding(
              padding: EdgeInsets.all(20),
              child: new SizedBox(
                width: 250,
                child: new TextField(
                controller: textController,
                maxLength: 30,
                maxLines: 1,
                maxLengthEnforced: true,
                autofocus: false,
                decoration: new InputDecoration(
                  counterText: '',
                  hintText: 'YOUR GUESS?',
                  hintStyle: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF000000),
                  ),
                  enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                  color: Color(0xFF000000), width: 3.0),
                  ),
                  focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                  color: Color(0xFF000000), width: 2.5),
                  ),
                  border: UnderlineInputBorder(
                  borderSide: BorderSide(
                  color: Color(0xFF000000), width: 1.0),
                  ),
                ),
                style: TextStyle(
                  height: 2.0,
                  color: Color(0xFF000000),
                  fontSize: 20,
                  )
                )
              ),

              )

          ]
        )
      )
    );
  }
}
