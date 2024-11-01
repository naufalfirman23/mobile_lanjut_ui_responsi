import 'package:flutter/material.dart';
import 'package:tugas_responsi/const/cfont.dart';
import 'package:tugas_responsi/pages/splahscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.remove();
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
    theme: ThemeData(
      fontFamily: FontType.poppinsReg,
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
    ),
    initialRoute: '/',
  ));
}

class MyApp extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
    return SplashScreen();
  }
}

