import 'package:flutter/material.dart';

class Introscreen2 extends StatefulWidget {
  const Introscreen2({super.key});

  @override
  State<Introscreen2> createState() => _Introscreen2State();
}

class _Introscreen2State extends State<Introscreen2> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body:  Column(
        children: [
          SizedBox(height: 30,),
          Container(
            height: size.height*.6,
            width: size.width*1,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/bro.png"))
            ),
          ),
        ],
      ),
    );
  }
}
