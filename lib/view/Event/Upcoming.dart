import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Upcomingui extends StatefulWidget {
  const Upcomingui({super.key});

  @override
  State<Upcomingui> createState() => _UpcominguiState();
}

class _UpcominguiState extends State<Upcomingui> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(.1),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Stack(
            children: [
              Center(
                child: Card(
                  elevation: 4,
                  child: Container(
                    height: size.height * .17,
                    width: size.width * .94,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white),
                  ),
                ),
              ),
              Positioned(
                  left: 30,
                  top: 28,
                  child: Container(
                    height: size.height * .12,
                    width: size.width * .26,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/Event2.png"),
                            fit: BoxFit.fill),
                        color: Colors.transparent),
                  )),
              Positioned(
                  left: 160,
                  top: 28,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Tech Conference",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Text(
                        "Join industry leaders in tech for a day \n"
                        "of insightful discussions and  \n"
                            "networking.",
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 13),
                      ),
                      Text(
                        "Aug 15 2024",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 16),
                      ),
                    ],
                  )),
            ],
          ),


          Stack(
            children: [
              Center(
                child: Card(
                  elevation: 4,
                  child: Container(
                    height: size.height * .17,
                    width: size.width * .94,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white),
                  ),
                ),
              ),
              Positioned(
                  left: 30,
                  top: 28,
                  child: Container(
                    height: size.height * .12,
                    width: size.width * .26,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/Event1.png"),
                            fit: BoxFit.fill),
                        color: Colors.transparent),
                  )),
              Positioned(
                  left: 160,
                  top: 28,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Tech Conference",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Text(
                        "Join industry leaders in tech for a day \n"
                            "of insightful discussions and  \n"
                            "networking.",
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 13),
                      ),
                      Text(
                        "Aug 15 2024",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 16),
                      ),
                    ],
                  )),
            ],
          ),

          Stack(
            children: [
              Center(
                child: Card(
                  elevation: 4,
                  child: Container(
                    height: size.height * .17,
                    width: size.width * .94,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white),
                  ),
                ),
              ),
              Positioned(
                  left: 30,
                  top: 28,
                  child: Container(
                    height: size.height * .12,
                    width: size.width * .26,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/Event2.png"),
                            fit: BoxFit.fill),
                        color: Colors.transparent),
                  )),
              Positioned(
                  left: 160,
                  top: 28,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Tech Conference",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Text(
                        "Join industry leaders in tech for a day \n"
                            "of insightful discussions and  \n"
                            "networking.",
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 13),
                      ),
                      Text(
                        "Aug 15 2024",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 16),
                      ),
                    ],
                  )),
            ],
          ),



        ],
      ),
    );
  }
}
