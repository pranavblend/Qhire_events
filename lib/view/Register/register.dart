import 'package:flutter/material.dart';
import 'package:jobminiproject/Customwidgets/textfieldclass.dart';
import 'package:jobminiproject/view/Tabbar/Tabbarui.dart';

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

  final _formKey = GlobalKey<FormState>();
  
  final RegExp nameRegExp = RegExp(r'^[a-zA-Z ]+$');
  final RegExp phoneRegExp = RegExp(r'^\d{10}$');
  final RegExp emailRegExp = RegExp(r'^[a-zA-Z0-9._]+@[a-zA-Z0-9]+\.[a-zA-Z]{2,}$');
  final RegExp genderRegExp = RegExp(r'^(Male|Female|Other)$', caseSensitive: false);
  final RegExp qualificationRegExp = RegExp(r'^[a-zA-Z ]+$');

  String? validateFullName(String? value) {
    if (value == null || value.isEmpty) return 'Full Name is required';
    if (!nameRegExp.hasMatch(value)) return 'Enter a valid full name';
    return null;
  }

  String? validateMobileNumber(String? value) {
    if (value == null || value.isEmpty) return 'Mobile number is required';
    if (!phoneRegExp.hasMatch(value)) return 'Enter a valid 10-digit mobile number';
    return null;
  }

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) return 'Email is required';
    if (!emailRegExp.hasMatch(value)) return 'Enter a valid email';
    return null;
  }

  String? validateGender(String? value) {
    if (value == null || value.isEmpty) return 'Gender is required';
    if (!genderRegExp.hasMatch(value)) return 'Enter Male, Female, or Other';
    return null;
  }

  String? validateQualification(String? value) {
    if (value == null || value.isEmpty) return 'Qualification is required';
    if (!qualificationRegExp.hasMatch(value)) return 'Enter a valid qualification';
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                height: size.height * 0.1,
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
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
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.w800),
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
                        hintText: 'Full Name',
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        validator: validateFullName,
                      ),
                      SizedBox(height: 16),
                      CustomFormField(
                        controller: _mobileNumber,
                        hintText: 'Mobile Number',
                        keyboardType: TextInputType.phone,
                        textInputAction: TextInputAction.next,
                        validator: validateMobileNumber,
                      ),
                      SizedBox(height: 16),
                      CustomFormField(
                        controller: _email,
                        hintText: 'Email',
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        validator: validateEmail,
                      ),
                      SizedBox(height: 16),
                      CustomFormField(
                        controller: _gender,
                        hintText: 'Gender',
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        validator: validateGender,
                      ),
                      SizedBox(height: 16),
                      CustomFormField(
                        controller: _qualification,
                        hintText: 'Qualification',
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        validator: validateQualification,
                      ),
                      SizedBox(height: 16),
                      // Add other fields similarly as needed...
                      InkWell(
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Tabbarui(),
                              ),
                            );
                          }
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
      ),
    );
  }
}
