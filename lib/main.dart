import 'package:flutter/material.dart';
import 'package:jobminiproject/view/Profile/Addqualification.dart';
import 'package:jobminiproject/view/Profile/Certification.dart';
import 'package:jobminiproject/view/Profile/Editprofile.dart';
import 'package:jobminiproject/view/Profile/Qualiification.dart';
import 'package:jobminiproject/view/Register/register.dart';
import 'package:jobminiproject/view/Saved/Saved.dart';
import 'package:jobminiproject/view/Tabbar/Tabbarui.dart';
import 'package:jobminiproject/view/login/forgotpassword.dart';
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
      home: const Certificationui()
    );
  }
}

