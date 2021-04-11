/*
DF0045 Number Conversion app
by Alexander Abraham a.k.a.
"The Black Unicorn".
Licensed under the MIT license.
*/

import 'dart:io';
import 'conv.dart';
import 'info.dart';
import 'constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    String converterMessage = AppLocalizations.of(context).converterLabel;
    String infoMessage = AppLocalizations.of(context).infoLabel;
    String quitMessage = AppLocalizations.of(context).quitLabel;
    return Scaffold(
      body: new Center(
        child: new Column(
          children: <Widget> [

            new SizedBox(height: aboveHeadingSpace),

            new Text(
              appTitle,
              style: new TextStyle(
                color: accentColor,
                fontSize: headingSize,
                fontFamily: headingFont
              )
            ),
            new SizedBox(height: belowHeadingSpace),
            new RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(stdRounding)
              ),
              color: accentColor,
              child: new Text(
                '$converterMessage',
                textAlign: TextAlign.left,
                style: new TextStyle(
                  color: mainColor,
                  fontSize: buttonFontSize,
                  fontFamily: defaultFont
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
            new SizedBox(height: buttonFontSize),
            new RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(stdRounding)
              ),
              color: accentColor,
              child: new Text(
                '$infoMessage',
                textAlign: TextAlign.left,
                style: new TextStyle(
                  color: mainColor,
                  fontSize: buttonFontSize,
                  fontFamily: defaultFont
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
            new SizedBox(height: buttonFontSize),
            new RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(stdRounding)
              ),
              color: accentColor,
              child: new Text(
                '$quitMessage',
                textAlign: TextAlign.left,
                style: new TextStyle(
                  color: mainColor,
                  fontSize: buttonFontSize,
                  fontFamily: defaultFont
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
