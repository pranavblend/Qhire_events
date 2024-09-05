import 'package:flutter/material.dart';
import 'package:jobminiproject/view/Home/Homeui.dart';

class Savedjobui extends StatelessWidget {
  const Savedjobui({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    bool bookmark=true;
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
                        Navigator.pop(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>Homescreen()));
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 30,
                        color: Colors.black
                      )),
                  Text(
                    ' Saved Jobs',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
            ),

            SizedBox(height: 14),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding:
                  const EdgeInsets.symmetric(vertical: 12),
                  hintText: "Job title,Keyword and Company",
                  hintStyle: TextStyle(
                      color: Colors.black.withOpacity(.5)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: Color.fromRGBO(14, 116, 244, 1),
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.grey.withOpacity(.01),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Colors.black.withOpacity(.3),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Colors.black.withOpacity(.3),
                    ),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black.withOpacity(.3),
                    ),
                  ),
                  suffixIcon: Icon(
                    Icons.keyboard_voice,
                    size: 28,
                    color: Color.fromRGBO(232, 143, 27, 1),
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    size: 28,
                    color: Color.fromRGBO(232, 143, 27, 1),
                  ),
                ),
              ),
            ),

            SizedBox(height: 20,),
            Center(
              child: Card(
                elevation: 2,
                child: Container(
                  height: size.height * .12,
                  width: size.width * .94,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white),

                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18),
                        child: CircleAvatar(
                          child: Image.asset("assets/Group 209.png"),radius: 30,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30,left: 10),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Microsoft',style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 20
                            ),),


                            Text('Product Designer',style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.black.withOpacity(.4),
                            ),),

                          ],
                        ),
                      ),
                      Spacer(),
                      bookmark?
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.bookmark,
                              size: 30,
                              color: Color.fromRGBO(
                                232,
                                143,
                                27,
                                1,
                              ),
                            )),
                      ):
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.bookmark,
                              size: 30,
                              color: Colors.white
                            )),
                      )

                    ],
                  ),
                ),
              ),
            ),



            SizedBox(height: 12,),

            Center(
              child: Card(
                elevation: 2,
                child: Container(
                  height: size.height * .12,
                  width: size.width * .94,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white),

                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18),
                        child: CircleAvatar(
                          child: Image.asset("assets/twit.png"),radius: 30,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30,left: 10),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Twitter',style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 20
                            ),),


                            Text('Product Designer',style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.black.withOpacity(.4),
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
                              Icons.bookmark,
                              size: 30,
                              color: Color.fromRGBO(
                                232,
                                143,
                                27,
                                1,
                              ),
                            )),
                      )

                    ],
                  ),
                ),
              ),
            ),




            SizedBox(height: 12,),

            Center(
              child: Card(
                elevation: 2,
                child: Container(
                  height: size.height * .12,
                  width: size.width * .94,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white),

                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18),
                        child: CircleAvatar(
                          child: Image.asset("assets/Group 209 (1).png"),radius: 30,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30,left: 10),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Facebook',style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 20
                            ),),


                            Text('Product Designer',style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.black.withOpacity(.4),
                            ),),

                          ],
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.bookmark,
                              size: 30,
                              color: Color.fromRGBO(
                                232,
                                143,
                                27,
                                1,
                              ),
                            )),
                      )

                    ],
                  ),
                ),
              ),
            ),





          ],
        ),
      ),
    );
  }
}
