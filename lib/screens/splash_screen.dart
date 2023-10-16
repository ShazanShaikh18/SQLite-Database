import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sq_flite/Screens/notes_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const NotesScreen(),));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 300,
              width: 300,
              child: Image.asset('assets/images/Notes_image.png')),
              const SizedBox(height: 30),
            const Text('Notes',  style: TextStyle(decoration: TextDecoration.underline, fontSize: 40, fontWeight: FontWeight.bold, color: Colors.cyan, shadows: [Shadow(color: Colors.black, offset: Offset(1.5, 2.0))],letterSpacing: 3),),
          ],
        ),
      ),
    );
  }
}