import 'package:flutter/material.dart';
import 'package:jobminiproject/view/login/loginui.dart';

class Onboarduserui extends StatefulWidget {
  const Onboarduserui({super.key});

  @override
  State<Onboarduserui> createState() => _OnboarduseruiState();
}

class _OnboarduseruiState extends State<Onboarduserui> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body:  Column(mainAxisAlignment: MainAxisAlignment.end,
        children: [
        SizedBox(height: 30,),
      Container(
        height: size.height*.4,
        width: size.width*1,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/6572439_3246622 1.png"))
        ),
      ),

        SizedBox(height: 50,),
        Container(
          // height: size.height*.38,
          width: size.width*1,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft:Radius.circular(200),topRight: Radius.circular(200)),
              color: Colors.white,
              border: Border.all(color: Color.fromRGBO(232, 143, 27, 1),width: 2)
          ),
          child: Column(
            children: [
              SizedBox(height: 70,),


              Text("Hello!",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w800),),
              SizedBox(height: 30,),
              Text("Your personalized gateway to success starts here \n"
                  "          with our job finder app’s welcome screen",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),

              SizedBox(height: 45,),

              InkWell(onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>Loginui()));
              },
                child: Card(elevation: 4,clipBehavior: Clip.hardEdge,
                  child: Container(
                    height: size.height*.052,
                    width: size.width*.58,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color:Colors.transparent
                    ),
                    child: Center(
                      child: Text("I’m a Job Seeker",style: TextStyle(
                          color:Color.fromRGBO(232, 143, 27, 1),fontSize: 18,fontWeight: FontWeight.bold

                      ),),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 60,)

            ],
          ),
        )
        ]
    ));
  }
}
