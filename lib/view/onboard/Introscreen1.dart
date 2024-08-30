import 'package:flutter/material.dart';

class Introscreen1 extends StatefulWidget {
  const Introscreen1({super.key});

  @override
  State<Introscreen1> createState() => _Introscreen1State();
}

class _Introscreen1State extends State<Introscreen1> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body:
      Column(
        children: [
          SizedBox(height: 40,),
          Container(
            height: size.height*.6,
            width: size.width*1,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/amico.png"))
            ),
          ),
        ],
      ),
    );
  }
}
