import 'constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class Info extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    String licensePhraseMessage = AppLocalizations.of(context).licensePhraseLabel;
    String licenseMessage = AppLocalizations.of(context).licenseLabel;
    String infoMessage = AppLocalizations.of(context).infoLabel;
    String byMessage = AppLocalizations.of(context).byLabel;
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
                '$infoMessage',
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
                          '$infoMessage',
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
                          '$appTitle v.$appVersion by $appAuthor\n$licensePhraseMessage $appLicense $licenseMessage',
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
