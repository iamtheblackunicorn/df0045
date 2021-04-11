/*
DF0045 Number Conversion app
by Alexander Abraham a.k.a.
"The Black Unicorn".
Licensed under the MIT license.
*/

import 'numbers.dart';
import 'constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class Converter extends StatefulWidget{
  @override
  ConverterState createState() => ConverterState();
}

class ConverterState extends State<Converter>{
  late final String inputType;
  late final String outputType;
  late final String inputLabelText;
  late final String outputLabelText;
  @override
  void initState(){
    super.initState();
    inputType = 'I';
    outputType = 'O';
    inputLabelText = '01 || OXFF';
    outputLabelText = '45?';
  }
  @override
  Widget build(BuildContext context){
    TextEditingController textController = new TextEditingController();
    String numberMessage = AppLocalizations.of(context).numberLabel;
    String decimalMessage = AppLocalizations.of(context).decimalLabel;
    String hexMessage = AppLocalizations.of(context).hexLabel;
    String binaryMessage = AppLocalizations.of(context).binaryLabel;
    String resetMessage = AppLocalizations.of(context).resetLabel;
    String converterMessage = AppLocalizations.of(context).converterLabel;
    return Scaffold(
      appBar: new AppBar(
        iconTheme: IconThemeData(
          color: accentColor,
        ),
        centerTitle: titleCenter,
        backgroundColor: mainColor,
        title: new Row(
          mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              new Text(
                '$converterMessage',
                style: new TextStyle(
                  color: accentColor,
                  fontSize: buttonFontSize,
                  fontFamily: defaultFont
                ),
              ),
            ]
          ),
        ),
      backgroundColor: mainColor,
      body: new SingleChildScrollView(child: new Center(
        child: new Column(
          children: <Widget> [

            new Padding(
              padding: EdgeInsets.all(stdPadding),
              child: new SizedBox(
                width: textBoxWidth,
                height: textBoxHeight,
                child: new Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(stdRounding)
                  ),
                  color: accentColor,
                  child: new Padding(
                    padding: EdgeInsets.all(stdPadding),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget> [

                        new Column(
                          children: <Widget> [
                            new SizedBox(height: boxSizingDif),
                            new Text(
                              '$inputType',
                              textAlign: TextAlign.left,
                              style: new TextStyle(
                                color: mainColor,
                                fontSize: stdPadding,
                                fontFamily: defaultFont
                              )
                            ),
                            new Text(
                              '$inputLabelText',
                              textAlign: TextAlign.left,
                              style: new TextStyle(
                                color: mainColor,
                                fontSize: buttonFontSize,
                                fontFamily: defaultFont
                              )
                            )
                          ]
                        ),

                        new SizedBox(width: boxPushBetween),

                        new Column(
                          children: <Widget> [
                            new SizedBox(height: boxSizingDif),
                            new Text(
                              '$outputType',
                              textAlign: TextAlign.left,
                              style: new TextStyle(
                                color: mainColor,
                                fontSize: stdPadding,
                                fontFamily: defaultFont
                              )
                            ),
                            new Text(
                              '$outputLabelText',
                              textAlign: TextAlign.left,
                              style: new TextStyle(
                                color: mainColor,
                                fontSize: buttonFontSize,
                                fontFamily: defaultFont
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
              padding: EdgeInsets.all(stdPadding),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget> [
                  new RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(stdRounding)
                    ),
                    color: accentColor,
                    child: new Text(
                      '$binaryMessage',
                      textAlign: TextAlign.left,
                      style: new TextStyle(
                        color: mainColor,
                        fontSize: buttonFontSize,
                        fontFamily: defaultFont
                      )
                    ),
                    onPressed: () {
                      String userInput = textController.text;
                      print(userInput);
                      if (isBinary(userInput) == titleCenter){
                        String result = convertBinaryToDecimal(userInput);
                        setState((){
                          inputType = '$binaryMessage';
                          outputType = '$decimalMessage';
                          inputLabelText = '$userInput';
                          outputLabelText = '$result';
                        });
                      } else {}
                    }
                  ),

                  new RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(stdRounding)
                    ),
                    color: accentColor,
                    child: new Text(
                      '$hexMessage',
                      textAlign: TextAlign.left,
                      style: new TextStyle(
                        color: mainColor,
                        fontSize: buttonFontSize,
                        fontFamily: defaultFont
                      )
                    ),
                    onPressed: () {
                      String userInput = textController.text;
                      if (isHex(userInput) == titleCenter){
                        String result = convertHexadecimalToDecimal(userInput);
                        setState((){
                          inputType = '$binaryMessage';
                          outputType = '$decimalMessage';
                          inputLabelText = '$userInput';
                          outputLabelText = '$result';
                        });
                      } else {}
                    }
                  ),

                  new RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(stdRounding)
                    ),
                    color: accentColor,
                    child: new Text(
                      '$resetMessage',
                      textAlign: TextAlign.left,
                      style: new TextStyle(
                        color: mainColor,
                        fontSize: buttonFontSize,
                        fontFamily: defaultFont
                      )
                    ),
                    onPressed: () {
                      setState((){
                        inputType = 'I';
                        outputType = 'O';
                        inputLabelText = '01 || OXFF';
                        outputLabelText = '45?';
                      });
                    }
                  ),

                ]
              )
            ),

            new Padding(
              padding: EdgeInsets.all(stdPadding),
              child: new SizedBox(
                width: textBoxWidth,
                height: textBoxheight/2,
                child: new Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(stdRounding)
                  ),
                  color: accentColor,
                  child: new Padding(
                    padding: EdgeInsets.all(buttonFontSize),
                    child: new TextField(
                      controller: textController,
                      maxLength: buttonFontSize,
                      maxLines: (lineThickness-2).toInt(),
                      maxLengthEnforced: titleCenter,
                      autofocus: false,
                      decoration: new InputDecoration(
                        counterText: '',
                        hintText: '$numberMessage',
                        hintStyle: TextStyle(
                          fontSize: stdPadding,
                          color: mainColor,
                          fontFamily: defaultFont
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: mainColor,
                            width: lineThickness
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: mainColor,
                            width: (lineThickness-0.5)
                          ),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: mainColor,
                            width: (lineThickness-1.5)
                          ),
                        ),
                      ),
                      style: TextStyle(
                        height: (lineThickness-1.0),
                        color: mainColor,
                        fontSize: stdPadding,
                        fontFamily: defaultFont
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
