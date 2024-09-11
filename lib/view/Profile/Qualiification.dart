import 'package:flutter/material.dart';
import 'package:jobminiproject/view/Profile/Profile.dart';

class Qualificationui extends StatefulWidget {
  const Qualificationui({super.key});

  @override
  State<Qualificationui> createState() => _QualificationuiState();
}

class _QualificationuiState extends State<Qualificationui> {
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
                      onPressed: () { Navigator.push(
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
                    'Qualification',
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
                  height: size.height * .1,
                  width: size.width * .94,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white),

                  child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 14,left: 30),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Diploma in Multimedia',style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18
                            ),),
                            Text('Vis College ,Calicut',style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14
                            ),),
                            Text('2022-2023',style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14
                            ),),

                          ],
                        ),
                      ),
                      Spacer(),
                      IconButton(
                          onPressed: () {
                          },
                          icon: Icon(
                              Icons.edit,
                              size: 20,
                              color: Color.fromRGBO(232, 143, 27, 1),
                          ))

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
                  height: size.height * .1,
                  width: size.width * .94,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white),

                  child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 14,left: 30),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Bachelors in Technology',style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18
                            ),),
                            Text('SCMS  Engineering ,Ernankulam',style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14
                            ),),
                            Text('2018-2022',style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14
                            ),),

                          ],
                        ),
                      ),
                      Spacer(),
                      IconButton(
                          onPressed: () {
                          },
                          icon: Icon(
                            Icons.edit,
                            size: 20,
                            color: Color.fromRGBO(232, 143, 27, 1),
                          ))

                    ],
                  ),
                ),
              ),
            ),
SizedBox(height: 30,),
Card(
  child: Container(
    height: size.height * .05,
    width: size.width * .94,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        border: Border.all(color: Color.fromRGBO(232, 143, 27, 1))),
    child: Icon(Icons.add_circle_outline_rounded,color: Color.fromRGBO(232, 143, 27, 1),),
  ),
)


          ],
        ),
      ),
    );
  }
}
