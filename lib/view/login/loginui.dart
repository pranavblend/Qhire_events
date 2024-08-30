import 'package:flutter/material.dart';

class Loginui extends StatefulWidget {
  const Loginui({super.key});

  @override
  State<Loginui> createState() => _LoginuiState();
}

class _LoginuiState extends State<Loginui> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: size.height,
              width: size.width,),

            Positioned(child: Container(
              height: size.height*.32,
              width: size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/Frame 427318970.png"),fit: BoxFit.cover)
              ),
            ),),

            Positioned(top:250,child: Container(
              width: size.width,
              height: size.height*.717,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(55),topRight: Radius.circular(55)),
                color: Colors.white,
                border: Border.all(color: Colors.grey)
              ),

              child: Column(
                children: [

                  SizedBox(height: 40,),
                  Text("Welcome Back",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w800),),
                  SizedBox(height: 8,),
                  Text("Login to your account",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.grey,)),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 400,
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 20),
                        hintStyle:
                        TextStyle(color: Colors.white.withOpacity(.5)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(14, 116, 244, 1),
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.grey.withOpacity(.08),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              color: Colors.black.withOpacity(.1)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              color: Colors.grey.withOpacity(.05)),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.grey.withOpacity(.1)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ))
          ],
        )

        )
      );
  }
}
