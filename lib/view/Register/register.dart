import 'package:flutter/material.dart';
import 'package:jobminiproject/Customwidgets/textfieldclass.dart';
import 'package:jobminiproject/view/Tabbar/Tabbarui.dart';

import '../../Customwidgets/textfield.dart';

class Registerui extends StatefulWidget {
  const Registerui({super.key});

  @override
  State<Registerui> createState() => _RegisteruiState();
}

class _RegisteruiState extends State<Registerui> {
  final TextEditingController _fullName = TextEditingController();
  final TextEditingController _mobileNumber = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _gender = TextEditingController();
  final TextEditingController _qualification = TextEditingController();
  final TextEditingController _experience = TextEditingController();
  final TextEditingController _profile = TextEditingController();
  final TextEditingController _district = TextEditingController();
  final TextEditingController _area = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SingleChildScrollView(
        // Wrapping everything in a scroll view
        child: Column(
          children: [
            Container(
              height: size.height * 0.1,
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                // image: DecorationImage(
                //   image: AssetImage("assets/Frame 427318970.png"),
                //   fit: BoxFit.cover,
                // ),
              ),
            ),
            Container(
              width: size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(55),
                  topRight: Radius.circular(55),
                ),
                color: Colors.white,
                border: Border.all(color: Colors.grey),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 40),
                    Text(
                      "Register",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Create your account",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 20),
                    CustomFormField(
                      controller: _fullName,
                      hintText: '       Full Name',
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                    ),
                    SizedBox(height: 16),
                    CustomFormField(
                      controller: _mobileNumber,
                      hintText: '       Mobile Number',
                      keyboardType: TextInputType.phone,
                      textInputAction: TextInputAction.next,
                    ),
                    SizedBox(height: 16),
                    CustomFormField(
                      controller: _email,
                      hintText: '       Email',
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                    ),
                    SizedBox(height: 16),
                    CustomFormField(
                      controller: _gender,
                      hintText: '       Gender',
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                    ),
                    SizedBox(height: 16),
                    CustomFormField(
                      controller: _qualification,
                      hintText: '       Qualification',
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                    ),
                    SizedBox(height: 16),
                    CustomFormField(
                      controller: _experience,
                      hintText: '       Experience',
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                    ),
                    SizedBox(height: 16),
                    CustomFormField(
                      controller: _profile,
                      hintText: '       Linkedin Profile',
                      keyboardType: TextInputType.url,
                      textInputAction: TextInputAction.next,
                    ),
                    SizedBox(height: 16),
                    CustomFormField(
                      controller: _district,
                      hintText: '      District',
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                    ),
                    SizedBox(height: 16),
                    CustomFormField(
                      controller: _area,
                      hintText: '       Area of Expertise',
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.done,
                    ),
                    SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.only(right: 250),
                      child: Text(
                        "Upload Photograph",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 2),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 16.0),
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      width: size.width * .9,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Center(
                          child: Row(
                        children: [
                          Container(
                            height: size.height * .033,
                            width: size.width * .245,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.black.withOpacity(.5)),
                            child: Center(
                              child: Text(
                                "Choose file",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(width: 20,),
                          Text(
                            "No file choosen",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      )),
                    ),

                    SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.only(right: 270),
                      child: Text(
                        "Upload Resume",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 2),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 16.0),
                      margin: EdgeInsets.symmetric(vertical: 10.0),
                      width: size.width * .9,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Center(
                          child: Row(
                            children: [
                              Container(
                                height: size.height * .033,
                                width: size.width * .245,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: Colors.black.withOpacity(.5)),
                                child: Center(
                                  child: Text(
                                    "Choose file",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              SizedBox(width: 20,),
                              Text(
                                "No file choosen",
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          )),
                    ),
                    SizedBox(height: 20,),
                    InkWell(onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>Tabbarui()));
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
                            "Register",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
