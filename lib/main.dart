import 'package:flutter/material.dart';
import 'package:jobminiproject/view/login/loginui.dart';
import 'package:jobminiproject/view/onboard/onboardhome.dart';
import 'package:jobminiproject/view/onboard/user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Onboardscreenui()
    );
  }
}

