import 'constants.dart';
import 'package:flutter/material.dart';

class Info extends StatelessWidget{
  @override
  Widget build(BuildContext context){
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
                'Info',
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
      body: new Center(
        child: new Column(
          children: <Widget> [
            new SizedBox(height: cardPushDown),
            new Padding(
              padding: EdgeInsets.all(stdPadding),
              child: new SizedBox(
                width: boxWidth,
                height: boxHeight,
                child: new Card(
                  color: accentColor,
                  child: new Column(
                    children: <Widget> [
                      new Padding(
                        padding: EdgeInsets.all(stdPadding),
                        child: new Text(
                          'INFO',
                          style: new TextStyle(
                            color:mainColor,
                            fontSize: buttonFontSize,
                            fontFamily: defaultFont
                          )
                        )
                      ),
                      new Padding(
                        padding: EdgeInsets.all(stdPadding),
                        child: new Text(
                          'DF0045 v.1.0.0 by Alexander Abraham\nlicensed under the MIT license',
                          style: new TextStyle(
                            color:mainColor,
                            fontSize: buttonFontSize,
                            fontFamily: defaultFont
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
