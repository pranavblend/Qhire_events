import 'package:flutter/material.dart';

import '../../Customwidgets/textfield.dart';

class Profileui extends StatefulWidget {
  const Profileui({super.key});

  @override
  State<Profileui> createState() => _ProfileuiState();
}

class _ProfileuiState extends State<Profileui> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
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
                top: 200,
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
                      Padding(
                        padding: const EdgeInsets.only(top: 88),
                        child: Text("Pranav U",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 24),),
                      ),
                      Text("Flutter Developer",style: TextStyle(color: Colors.black.withOpacity(.5),fontWeight: FontWeight.bold,fontSize: 14),),
                      Text("pranavblend@gmail.com",style: TextStyle(color: Colors.black.withOpacity(.5),fontWeight: FontWeight.bold,fontSize: 14),),


                      SizedBox(height: 30,),

                      Center(
                        child: Card(
                          elevation: 4,
                          child: Container(
                            height: size.height * .065,
                            width: size.width * .94,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white),

                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 18),
                                  child: CircleAvatar(
                                    child: Image.asset("assets/twit.png"),radius: 20,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20,left: 10),
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Profile',style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16
                                      ),),


                                    ],
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: IconButton(
                                      onPressed: () {
                                      },
                                      icon: Icon(
                                        Icons.arrow_forward_ios_sharp,
                                        size: 20,
                                        color: Colors.black
                                      )),
                                )

                              ],
                            ),
                          ),
                        ),
                      ),



                      SizedBox(height: 5,),

                      Center(
                        child: Card(
                          elevation: 4,
                          child: Container(
                            height: size.height * .065,
                            width: size.width * .94,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white),

                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 18),
                                  child: CircleAvatar(
                                    child: Image.asset("assets/twit.png"),radius: 20,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20,left: 10),
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Qualifications',style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16
                                      ),),


                                    ],
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: IconButton(
                                      onPressed: () {
                                      },
                                      icon: Icon(
                                          Icons.arrow_forward_ios_sharp,
                                          size: 20,
                                          color: Colors.black
                                      )),
                                )

                              ],
                            ),
                          ),
                        ),
                      ),


                      SizedBox(height: 5,),

                      Center(
                        child: Card(
                          elevation: 4,
                          child: Container(
                            height: size.height * .065,
                            width: size.width * .94,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white),

                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 18),
                                  child: CircleAvatar(
                                    child: Image.asset("assets/twit.png"),radius: 20,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20,left: 10),
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Certifications',style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16
                                      ),),


                                    ],
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: IconButton(
                                      onPressed: () {
                                      },
                                      icon: Icon(
                                          Icons.arrow_forward_ios_sharp,
                                          size: 20,
                                          color: Colors.black
                                      )),
                                )

                              ],
                            ),
                          ),
                        ),
                      ),


                      SizedBox(height: 5,),

                      Center(
                        child: Card(
                          elevation: 4,
                          child: Container(
                            height: size.height * .065,
                            width: size.width * .94,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white),

                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 18),
                                  child: CircleAvatar(
                                    child: Image.asset("assets/twit.png"),radius: 20,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20,left: 10),
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Skills',style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16
                                      ),),


                                    ],
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: IconButton(
                                      onPressed: () {
                                      },
                                      icon: Icon(
                                          Icons.arrow_forward_ios_sharp,
                                          size: 20,
                                          color: Colors.black
                                      )),
                                )

                              ],
                            ),
                          ),
                        ),
                      ),


                      SizedBox(height: 5,),

                      Center(
                        child: Card(
                          elevation: 4,
                          child: Container(
                            height: size.height * .065,
                            width: size.width * .94,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white),

                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 18),
                                  child: CircleAvatar(
                                    child: Image.asset("assets/twit.png"),radius: 20,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20,left: 10),
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Resume',style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16
                                      ),),


                                    ],
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: IconButton(
                                      onPressed: () {
                                      },
                                      icon: Icon(
                                          Icons.arrow_forward_ios_sharp,
                                          size: 20,
                                          color: Colors.black
                                      )),
                                )

                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 5,),

                      Center(
                        child: Card(
                          elevation: 4,
                          child: Container(
                            height: size.height * .065,
                            width: size.width * .94,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white),

                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 18),
                                  child: CircleAvatar(
                                    child: Image.asset("assets/twit.png"),radius: 20,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20,left: 10),
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Applied Jobs',style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16
                                      ),),


                                    ],
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: IconButton(
                                      onPressed: () {
                                      },
                                      icon: Icon(
                                          Icons.arrow_forward_ios_sharp,
                                          size: 20,
                                          color: Colors.black
                                      )),
                                )

                              ],
                            ),
                          ),
                        ),
                      ),


                    ],
                  ),
                  
                  
                  
                  
                  
                  
                  
                  
                )),
            Positioned(top:130,left:145,child: CircleAvatar(radius: 80,
              backgroundColor: Color.fromRGBO(232, 143, 27, 1),
            child: CircleAvatar(
              backgroundColor: Colors.white,radius: 70,
            ),),
            )
          ],
        )
    );
  }
}
