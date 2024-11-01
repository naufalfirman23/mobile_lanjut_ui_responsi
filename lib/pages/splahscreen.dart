import 'package:flutter/material.dart';
import 'package:tugas_responsi/const/cfont.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:tugas_responsi/pages/login.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int _counter = 5; // Set waktu hitungan mundur

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    // Timer untuk hitungan mundur
    Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      if (_counter == 1) {
        timer.cancel();
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (_) => LoginPage()));
      } else {
        setState(() {
          _counter--;
        });
      }
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/img/logo.png',
              width: 250,
            ),
            SizedBox(height: 30),
            Text(
              "Loading Time $_counter Second",
              style: TextStyle(
                fontFamily: FontType.poppinsBold,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
