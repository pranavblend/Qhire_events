import 'package:flutter/material.dart';
import 'package:jobminiproject/view/Profile/Profile.dart';

import '../../Customwidgets/textfieldclass.dart';

class Editprofileui extends StatefulWidget {
  const Editprofileui({super.key});

  @override
  State<Editprofileui> createState() => _EditprofileuiState();
}

class _EditprofileuiState extends State<Editprofileui> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
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
                                  builder: (context) =>Profileui()));
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
          
              CircleAvatar(radius: 80,
                backgroundColor: Color.fromRGBO(232, 143, 27, 1),
                child: CircleAvatar(
                  backgroundColor: Colors.white,radius: 70,
                ),),
          
              SizedBox(height: 20),
              CustomFormField(
                hintText: '       Full Name',
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
              ),
              SizedBox(height: 16),
              CustomFormField(
                hintText: '       Email',
                keyboardType: TextInputType.phone,
                textInputAction: TextInputAction.next,
              ),
              SizedBox(height: 16),
              CustomFormField(
                hintText: '       Phonenumber',
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
              ),
              SizedBox(height: 16),
              CustomFormField(
                hintText: '       Age',
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
              ),
              SizedBox(height: 16),
              CustomFormField(
                hintText: '       Gender',
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
              ),
              SizedBox(height: 16),
              CustomFormField(
                hintText: '       Qualifications',
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
              ),
              SizedBox(height: 16),
              CustomFormField(
                hintText: '       Skills',
                keyboardType: TextInputType.url,
                textInputAction: TextInputAction.next,
              ),
              SizedBox(height: 16),
              CustomFormField(
                hintText: '      Experience',
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
              ),

              SizedBox(height: 30,),

              Card(
                child: Container(
                  height: size.height * .22,
                  width: size.width * .89,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                  border: Border.all(color: Color.fromRGBO(232, 143, 27, 1))),
                child:  Column(
                  children: [

                    SizedBox(height: 30,),

                    Text(
                      'Drag and Drop Files',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),

                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                            Icons.cloud_upload,
                            size: 60,
                            color: Color.fromRGBO(232, 143, 27, 1))
                        ),
                    // SizedBox(height: 20,),
                    InkWell(onTap: (){
                    },
                      child: Container(
                        height: size.height * .050,
                        width: size.width * .65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color.fromRGBO(232, 143, 27, 1),
                        ),
                        child: Center(
                          child: Text(
                            "Browse Files",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),),
              ),
              SizedBox(height: 20,),
              InkWell(onTap: (){
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
                      "Update",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,)


            ],
          ),
        ),
      ),
    );
  }
}
