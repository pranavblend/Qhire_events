import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:jobminiproject/view/Home/Bottomsheet.dart';
import 'package:jobminiproject/view/Saved/Saved.dart';

import '../../Customwidgets/textfieldclass.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.withOpacity(.1),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: size.width,
                height: size.height * .29,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(35),
                        bottomRight: Radius.circular(35)),
                    color: Colors.white),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "LOGO",
                            style: TextStyle(
                                color: Color.fromRGBO(232, 143, 27, 1),
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Spacer(),
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>Savedjobui()));
                            },
                            icon: Icon(
                              Icons.bookmark_border,
                              size: 30,
                              color: Color.fromRGBO(
                                232,
                                143,
                                27,
                                1,
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.notifications,
                                size: 30,
                                color: Color.fromRGBO(232, 143, 27, 1),
                              )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: TextFormField(
                              decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.symmetric(vertical: 14),
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
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              useSafeArea: true,
                              isScrollControlled: true,
                              builder: (context) => Bottomsheetui(),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Container(
                              height: size.height * .05,
                              width: size.width * .1,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Colors.black.withOpacity(.3),
                                  )),
                              child: Icon(
                                Icons.tune,
                                size: 30,
                                color: Color.fromRGBO(232, 143, 27, 1),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 28,
                            color: Color.fromRGBO(232, 143, 27, 1),
                          ),
                          Text(
                            "Calicut,Kerala",
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              height: size.height * .04,
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(.2),
                                  borderRadius: BorderRadius.circular(18)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.access_time_outlined,
                                      size: 24,
                                      color: Color.fromRGBO(232, 143, 27, 1),
                                    ),
                                    Text("UI/UX Designer")
                                  ],
                                ),
                              )),
                        ),
                        Container(
                            height: size.height * .04,
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(.2),
                                borderRadius: BorderRadius.circular(18)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.access_time_outlined,
                                    size: 24,
                                    color: Color.fromRGBO(232, 143, 27, 1),
                                  ),
                                  Text("UI Designer")
                                ],
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              height: size.height * .04,
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(.2),
                                  borderRadius: BorderRadius.circular(18)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.access_time_outlined,
                                      size: 24,
                                      color: Color.fromRGBO(232, 143, 27, 1),
                                    ),
                                    Text("Design Lead")
                                  ],
                                ),
                              )),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                          height: size.height * .044,
                          width: size.width * .14,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(232, 143, 27, 1),
                              borderRadius: BorderRadius.circular(14)),
                          child: Center(
                            child: Text(
                              "All",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          )),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                        height: size.height * .044,
                        width: size.width * .2,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: Color.fromRGBO(232, 143, 27, 1)),
                            borderRadius: BorderRadius.circular(14)),
                        child: Center(
                          child: Text(
                            "Part Time",
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        )),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                        height: size.height * .044,
                        width: size.width * .2,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: Color.fromRGBO(232, 143, 27, 1)),
                            borderRadius: BorderRadius.circular(14)),
                        child: Center(
                          child: Text(
                            "Full Time",
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        )),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                        height: size.height * .044,
                        width: size.width * .2,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: Color.fromRGBO(232, 143, 27, 1)),
                            borderRadius: BorderRadius.circular(14)),
                        child: Center(
                          child: Text(
                            "Freelance",
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        )),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                        height: size.height * .044,
                        width: size.width * .2,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: Color.fromRGBO(232, 143, 27, 1)),
                            borderRadius: BorderRadius.circular(14)),
                        child: Center(
                          child: Text(
                            "Remote",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 200),
                child: Text(
                  "Recommended For You",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SingleChildScrollView(scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        height: size.height * .2,
                        width: size.width * .6,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 18,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: CircleAvatar(
                                    backgroundImage:
                                        AssetImage("assets/Soft.png"),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: Text(
                                    "Softroniics \n"
                                    "UI/UX Designer",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 13),
                                  ),
                                ),
                                Spacer(),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.bookmark_border,
                                      size: 30,
                                      color: Color.fromRGBO(
                                        232,
                                        143,
                                        27,
                                        1,
                                      ),
                                    )),
                              ],
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                "2nd Floor, Maniyattukudi Asfa \n"
                                "Building,Mavoor Road Calicut, Kerala",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    color: Colors.grey),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: Text(
                                    "Full time",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                        color: Colors.black.withOpacity(.8)),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.grey,
                                    radius: 3,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: Text(
                                    "Exp 3 Years",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                        color: Colors.black.withOpacity(.8)),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.grey,
                                    radius: 3,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: Text(
                                    "Remote",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                        color: Colors.black.withOpacity(.8)),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 08,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 160),
                              child: Container(
                                  height: size.height * .040,
                                  width: size.width * .14,
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(232, 143, 27, 1),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Center(
                                    child: Text(
                                      "Apply",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Container(
                      height: size.height * .2,
                      width: size.width * .6,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 18,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: CircleAvatar(
                                  backgroundImage:
                                  AssetImage("assets/Soft.png"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  "Softroniics \n"
                                      "UI/UX Designer",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 13),
                                ),
                              ),
                              Spacer(),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.bookmark_border,
                                    size: 30,
                                    color: Color.fromRGBO(
                                      232,
                                      143,
                                      27,
                                      1,
                                    ),
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "2nd Floor, Maniyattukudi Asfa \n"
                                  "Building,Mavoor Road Calicut, Kerala",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                  color: Colors.grey),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  "Full time",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                      color: Colors.black.withOpacity(.8)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  radius: 3,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  "Exp 3 Years",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                      color: Colors.black.withOpacity(.8)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  radius: 3,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  "Remote",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                      color: Colors.black.withOpacity(.8)),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 08,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 160),
                            child: Container(
                                height: size.height * .040,
                                width: size.width * .14,
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(232, 143, 27, 1),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Text(
                                    "Apply",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 270),
                child: Text(
                  "Featured Jobs",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                height: size.height * .188,
                width: size.width * .9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white),
                child: Column(
                  children: [
                    SizedBox(height: 8,),
                    Padding(
                      padding: const EdgeInsets.only(left: 280,top: 10),
                      child: Container(
                          height: size.height * .02,
                          width: size.width * .13,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: Color.fromRGBO(232, 143, 27, 1)),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              "3 days ago",
                              style: TextStyle(
                                fontSize: 10,
                                color: Color.fromRGBO(232, 143, 27, 1),fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                    ),
                    Row(children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          height: size.height * .065,
                          width: size.width * .14,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/Amazon.png"),fit: BoxFit.cover),color: Colors.transparent
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "UI/UX Designer\n"
                              "Amazon",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 13),
                        ),
                      ),
                    ],),
                    Padding(
                      padding: const EdgeInsets.only(right: 270,top: 10),
                      child: Text(
                        "California,USA",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 13,color: Colors.grey),
                      ),
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 22,top: 10),
                          child: Container(
                            height: size.height * .02,
                            width: size.width * .13,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: Color.fromRGBO(232, 143, 27, 1)),
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                "Full times",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black,fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Container(
                              height: size.height * .040,
                              width: size.width * .2,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(232, 143, 27, 1),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: Text(
                                  "Apply",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              )),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),





              Container(
                height: size.height * .188,
                width: size.width * .9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white),
                child: Column(
                  children: [
                    SizedBox(height: 8,),
                    Padding(
                      padding: const EdgeInsets.only(left: 280,top: 10),
                      child: Container(
                        height: size.height * .02,
                        width: size.width * .13,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: Color.fromRGBO(232, 143, 27, 1)),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            "3 days ago",
                            style: TextStyle(
                                fontSize: 10,
                                color: Color.fromRGBO(232, 143, 27, 1),fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Row(children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          height: size.height * .065,
                          width: size.width * .14,
                          decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/Amazon.png"),fit: BoxFit.cover),color: Colors.transparent
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "UI/UX Designer\n"
                              "Amazon",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 13),
                        ),
                      ),
                    ],),
                    Padding(
                      padding: const EdgeInsets.only(right: 270,top: 10),
                      child: Text(
                        "California,USA",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 13,color: Colors.grey),
                      ),
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 22,top: 10),
                          child: Container(
                            height: size.height * .02,
                            width: size.width * .13,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: Color.fromRGBO(232, 143, 27, 1)),
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                "Full times",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black,fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Container(
                              height: size.height * .040,
                              width: size.width * .2,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(232, 143, 27, 1),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: Text(
                                  "Apply",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              )),
                        ),
                      ],
                    )
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
