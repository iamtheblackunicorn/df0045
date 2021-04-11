/*
DF0045 Number Conversion app
by Alexander Abraham a.k.a.
"The Black Unicorn".
Licensed under the MIT license.
*/

import 'src/title.dart';
import 'src/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Home(),
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', '')
      ],
    )
  );
}
