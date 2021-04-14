<p align="center">
 <img src="https://github.com/iamtheblackunicorn/df0045/raw/main/assets/images/banner.png"/>
</p>

# DF0045 :eagle:

*A Flutter app to handle conversions between different number systems!* :eagle:

## About :books:

This app is a graphic tool to convert binary and hexadecimal numbers into decimal numbers. By binary numbers I mean numbers of base 2. By hexadecimal numbers I mean numbers of base 16. Decimal numbers are numbers of base 10 and ***NOT*** doubles.

## Download :inbox_tray:

- *Dark Red* (v.1.0.0):
  - Download for Android: Still work in progress! (17.7 MB)
  - Download for Mac OSX: Still work in progress! (13.5 MB)

## Building :hammer:

Make sure that you have the following programmes installed:

- Flutter SDK
- Dart SDK
- Android Studio
- Android SDK
- Java JDK
- Xcode
- Make
- Git

After you have installed these, run this command to generate a keystore for the app.

```bash
$ keytool -genkey -v -keystore key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias key
```

After having done that, move the Java keystore to `android/app` and fill in the fields for the keystore password in the file `android/app/key.properties`.

Finally, run these commands:

```bash
$ flutter pub get
$ flutter build apk
```

You have now generated a release build of *DF0045*.

## Extending the supported languages :book:

*DF0045* is localized for German and English. To add a language, simply create a filed called `app_languagecode.arb` in `lib/l10n` where `languagecode` represents the languagecode for the language you want to add. If it were Spanish for example, you would create a file called `app_es.arb`.
Copy and paste the contents from one of the other `*.arb` files and edit the strings accordingly.
Finally, add this line to the list `supportedLocales` in the file `lib/main.dart`.

```dart
const Locale('languagecode', ''),
```

`languagecode` represents the language you are translating for.

## Changelog :black_nib:

### Version 1.0.0: Initial Release:

- upload to GitHub
- polishing of the logic
- minor fixes

## Note :scroll:

## Note :scroll:

- *DF0045 :eagle:* by Alexander Abraham :black_heart: a.k.a. *"The Black Unicorn" :unicorn:*
- Licensed under the MIT license.
