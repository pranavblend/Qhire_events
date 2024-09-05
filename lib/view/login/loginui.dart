import 'package:flutter/material.dart';
import 'package:jobminiproject/Customwidgets/textfield.dart';
import 'package:jobminiproject/view/Register/register.dart';

class Loginui extends StatefulWidget {
  const Loginui({super.key});

  @override
  State<Loginui> createState() => _LoginuiState();
}

class _LoginuiState extends State<Loginui> {
  bool? isChecked1 = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SafeArea(
        child: Scaffold(
            body: Stack(
      children: [
        Container(
          height: size.height,
          width: size.width,
        ),
        Positioned(
          child: Container(
            height: size.height * .32,
            width: size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/Frame 427318970.png"),
                    fit: BoxFit.cover)),
          ),
        ),
        Positioned(
            top: 250,
            child: Container(
              width: size.width,
              height: size.height * .717,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(55),
                      topRight: Radius.circular(55)),
                  color: Colors.white,
                  border: Border.all(color: Colors.grey)),
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Welcome Back",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text("Login to your account",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Customformfield(),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Checkbox(
                                tristate: false,
                                activeColor: Color.fromRGBO(232, 143, 27, 1),
                                checkColor: Colors.white,
                                value: isChecked1,
                                onChanged: (val) {
                                  setState(() {
                                    isChecked1 = val;
                                  });
                                }),
                            Text("Remember me")
                          ],
                        ),
                        Text("Forgot Passwprd?")
                      ],
                    ),
                  ),

                  SizedBox(height: 20,),
                  InkWell(onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>Registerui()));
                  },
                    child: Container(
                      height: size.height * .050,
                      width: size.width * .88,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color.fromRGBO(232, 143, 27, 1),
                      ),
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Text("Or",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  // Row(
                  //   children: [
                  //    Container(
                  //      height: size.height*.058,
                  //      width: size.width*.122,
                  //      color: Colors.blueAccent,
                  //      child:CircleAvatar(
                  //        backgroundColor: Colors.transparent,radius: 1,
                  //        child: Image.asset("assets/apple (1).png"),
                  //      )
                  //    )
                  //   ],
                  // )

                ],
              ),
            ))
      ],
    )));
  }
}
