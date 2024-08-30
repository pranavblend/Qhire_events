import 'package:flutter/material.dart';
import 'package:jobminiproject/view/onboard/user.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'Introscreen1.dart';
import 'introscreen2.dart';
import 'introscreen3.dart';

class Onboardscreenui extends StatefulWidget {
  const Onboardscreenui({super.key});

  @override
  State<Onboardscreenui> createState() => _OnboardscreenuiState();
}

class _OnboardscreenuiState extends State<Onboardscreenui> {
  PageController _controller=PageController();
  bool text1=true;
  bool text2=false;
  bool text3=false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body:  Stack(
        children: [
          PageView(
            onPageChanged:(index){
              setState(() {
                text1=(index==0);
                text2=(index==1);
                text3=(index==2);
              });
            },
            controller: _controller,
            children: [
              Introscreen1(),
              Introscreen2(),
              Introscreen3(),

            ],
          ),
          Column(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: size.height*.35,
                width: size.width*1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft:Radius.circular(40),topRight: Radius.circular(40)),
                  color: Colors.white,
                  border: Border.all(color: Color.fromRGBO(232, 143, 27, 1),width: 2)
                ),

                child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    SizedBox(height: 65,),

                    //First line

                    if(text1)
                      Text("Hi!",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
                    if(text2)
                      Text("Together we can",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
                    if(text3)
                      Text("Easy to figure out!",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),

                    SizedBox(height: 20),
                    //Second line

                    if(text1)
                      Text("          Welcome to CareerHub! \n"
                          "Look for your dream job, with us",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                    if(text2)
                      Text("Find a suitable job without even \n"
                          "                 leaving home",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                    if(text3)
                      Text("No need to delve into it for a long time, \n"
                          "        everything is clear and simple.",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),

                    SizedBox(height: 20,),

                    text3?
                    GestureDetector(onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>Onboarduserui()));
                    },
                      child: Container(
                        height: size.height*.050,
                        width: size.width*.88,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color.fromRGBO(232, 143, 27, 1),
                        ),
                        child: Center(
                          child: Text("Get Started!",style: TextStyle(
                              color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold

                          ),),
                        ),
                      ),
                    ):
                    GestureDetector(onTap: (){
                      _controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeInOutCubicEmphasized);
                    },
                      child: Container(
                        height: size.height*.050,
                        width: size.width*.88,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color.fromRGBO(232, 143, 27, 1),
                        ),
                        child: Center(
                          child: Text("Next",style: TextStyle(
                              color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold

                          ),),
                        ),
                      ),
                    ),

                      SizedBox(height: 20,),
                    if(!text3)
                    GestureDetector(onTap: (){
                      _controller.jumpToPage(2);
                    },
                      child: Container(
                        height: size.height*.050,
                        width: size.width*.88,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color:Colors.transparent
                        ),
                        child: Center(
                          child: Text("Skip",style: TextStyle(
                              color: Colors.grey,fontSize: 18,fontWeight: FontWeight.bold

                          ),),
                        ),
                      ),
                    )
                  ],
                ),

              ),
            ],
          ),

          Container(
            alignment: Alignment(-.4, 0.38),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SmoothPageIndicator(controller: _controller, count: 3,effect:  ExpandingDotsEffect(
                    expansionFactor: 5,
                    spacing:  10.0,
                    radius:  25.0,
                    dotWidth:  8.0,
                    dotHeight:  7.0,
                    paintStyle:  PaintingStyle.fill,
                    activeDotColor: Color.fromRGBO(232, 143, 27, 1),
                ),),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
