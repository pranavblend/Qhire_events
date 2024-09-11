import 'package:flutter/material.dart';
import 'package:jobminiproject/view/Profile/Addqualification.dart';
import 'package:jobminiproject/view/Profile/Profile.dart';

class Certificationui extends StatefulWidget {
  const Certificationui({super.key});

  @override
  State<Certificationui> createState() => _CertificationuiState();
}

class _CertificationuiState extends State<Certificationui> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Profileui()));
                      },
                      icon: Icon(
                          Icons.arrow_back,
                          size: 30,
                          color: Colors.black
                      )),
                  Text(
                    'Certification',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
            ),

            SizedBox(height: 5,),

            Center(
              child: Card(
                elevation: 4,
                child: Container(
                  height: size.height * .18,
                  width: size.width * .94,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white),

                  child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          height: size.height*.14,
                          width: size.width*.4,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/image 13.png")),
                            border: Border.all(width: 4,color: Colors.black.withOpacity(.1))
                          ),
                        ),
                      ),


                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 14),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Fundamentals of UI/UX',style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18
                            ),),
                            Text('Figma Google',style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16
                            ),),
                            Text('Certifiate',style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16
                            ),),

                          ],
                        ),
                      ),

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
                  height: size.height * .18,
                  width: size.width * .94,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white),

                  child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          height: size.height*.14,
                          width: size.width*.4,
                          decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/image 13.png")),
                              border: Border.all(width: 4,color: Colors.black.withOpacity(.1))
                          ),
                        ),
                      ),


                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 14),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Fundamentals of UI/UX',style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18
                            ),),
                            Text('Figma Google',style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16
                            ),),
                            Text('Certifiate',style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16
                            ),),

                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),








            SizedBox(height: 30,),
            InkWell(onTap: (){ Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Addqualifiction()));},
              child: Card(
                child: Container(
                  height: size.height * .05,
                  width: size.width * .94,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      border: Border.all(color: Color.fromRGBO(232, 143, 27, 1))),
                  child: Icon(Icons.add_circle_outline_rounded,color: Color.fromRGBO(232, 143, 27, 1),),
                ),
              ),
            )


          ],
        ),
      ),
    );

  }
}
