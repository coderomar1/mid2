import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mid2_test/SecondPage.dart';
import 'package:mid2_test/applocale/applocale.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      localizationsDelegates: const [
          AppLocale.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: const [
        Locale("en", "EN"),
        Locale("ar", "AR"),
      ],

      localeResolutionCallback: (currentLang, supportLang) {
        if (currentLang != null) {
          for (Locale locale in supportLang) {
            if (locale.languageCode == currentLang.languageCode) {
              return currentLang;
            }  }  }
        return supportLang.first;
      }, );
  }

}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void initState() {
    super.initState();
    startSplashScreenTimer();
  }
  startSplashScreenTimer() async {
    var _duration = const Duration(seconds: 5);
    return Timer(_duration, navigationToNextPage);
  }
  void navigationToNextPage() async {
    Navigator.pushAndRemoveUntil(
      context, MaterialPageRoute(builder: (context) => SecondPage()),
          (Route<dynamic> route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[300],
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children:[
              const SizedBox(height: 100,),
              CircleAvatar( radius: 120, backgroundColor: Colors.white,
                child: Text(getLang(context, 'welcome'), style:TextStyle(color: Colors.black, fontSize: 20)),
              ),
              const SizedBox(height: 50,),
              CircularProgressIndicator( backgroundColor: Colors.pink[300], ),
            ]  ), ), );}
}