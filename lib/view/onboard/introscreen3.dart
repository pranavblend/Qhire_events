import 'package:flutter/material.dart';

class Introscreen3 extends StatefulWidget {
  const Introscreen3({super.key});

  @override
  State<Introscreen3> createState() => _Introscreen3State();
}

class _Introscreen3State extends State<Introscreen3> {
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
                image: DecorationImage(image: AssetImage("assets/bro2.png"))
            ),
          ),
        ],
      ),
    );
  }
}
