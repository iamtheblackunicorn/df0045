import 'package:flutter/material.dart';
import 'numbers.dart';

class Converter extends StatefulWidget{
  @override
  ConverterState createState() => ConverterState();
}

class ConverterState extends State<Converter>{
  String inputType;
  String outputType;
  String inputLabelText;
  String outputLabelText;
  @override
  void initState(){
    super.initState();
    String inputType = 'Input';
    String outputType = 'Output';
    String inputLabelText = '01 OR OXFF';
    String outputLabelText = '45?';
  }
  @override
  Widget build(BuildContext context){
    TextEditingController textController = new TextEditingController();
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
                'Converter',
                style: new TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 30
                ),
              ),
            ]
          ),
        ),
      backgroundColor: Color(0xFFFFFFFF),
      body: new SingleChildScrollView(child: new Center(
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
                              '$inputType',
                              textAlign: TextAlign.left,
                              style: new TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 20
                              )
                            ),
                            new Text(
                              '$inputLabelText',
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
                              '$outputType',
                              textAlign: TextAlign.left,
                              style: new TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 20
                              )
                            ),
                            new Text(
                              '$outputLabelText',
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
                      'BINARY',
                      textAlign: TextAlign.left,
                      style: new TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 30
                      )
                    ),
                    onPressed: () {
                      String userInput = textController.text;
                      print(userInput);
                      if (isBinary(userInput) == true){
                        String result = convertBinaryToDecimal(userInput);
                        setState((){
                          inputType = 'Binary';
                          outputType = 'Deicmal';
                          inputLabelText = '$userInput';
                          outputLabelText = '$result';
                        });
                      } else {}
                    }
                  ),

                  new RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)
                    ),
                    color: Color(0xFF000000),
                    child: new Text(
                      'HEX',
                      textAlign: TextAlign.left,
                      style: new TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 30
                      )
                    ),
                    onPressed: () {
                      String userInput = textController.text;
                      if (isHex(userInput) == true){
                        print('HELLO!');
                        String result = convertHexadecimalToDecimal(userInput);
                        setState((){
                          inputType = 'Hex';
                          outputType = 'Deicmal';
                          inputLabelText = '$userInput';
                          outputLabelText = '$result';
                        });
                      } else {}
                    }
                  ),

                ]
              )
            ),

            new Padding(
              padding: EdgeInsets.all(20),
              child: new SizedBox(
                width: 500,
                height: 100,
                child: new Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)
                  ),
                  color: Color(0xFF000000),
                  child: new Padding(
                    padding: EdgeInsets.all(30),
                    child: new TextField(
                      controller: textController,
                      maxLength: 30,
                      maxLines: 1,
                      maxLengthEnforced: true,
                      autofocus: false,
                      decoration: new InputDecoration(
                        counterText: '',
                        hintText: 'NUMBER',
                        hintStyle: TextStyle(
                          fontSize: 20,
                          color: Color(0xFFFFFFFF),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFFFFFFF),
                            width: 3.0
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFFFFFFF),
                            width: 2.5
                          ),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFFFFFFF),
                            width: 1.0
                          ),
                        ),
                      ),
                      style: TextStyle(
                        height: 2.0,
                        color: Color(0xFFFFFFFF),
                        fontSize: 20,
                      )
                    )
                  )
                )
              )
            )
          ]
        )
      ))
    );
  }
}
