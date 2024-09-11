import 'package:flutter/material.dart';
import 'package:jobminiproject/view/Profile/Certification.dart';

import '../../Customwidgets/textfieldclass.dart';

class Addqualifiction extends StatefulWidget {
  const Addqualifiction({super.key});

  @override
  State<Addqualifiction> createState() => _AddqualifictionState();
}

class _AddqualifictionState extends State<Addqualifiction> {
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
                              builder: (context) => Certificationui()));
                      },
                      icon: Icon(
                          Icons.arrow_back,
                          size: 30,
                          color: Colors.black
                      )),
                  Text(
                    'Add Qualification',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            CustomFormField(
              hintText: '       Education',
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
            ),
            SizedBox(height: 16),
            CustomFormField(
              hintText: '       University/College',
              keyboardType: TextInputType.phone,
              textInputAction: TextInputAction.next,
            ),
            SizedBox(height: 16),
            CustomFormField(
              hintText: '       Enrolled Year',
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
            ),
            SizedBox(height: 16),
            CustomFormField(
              hintText: '       Passout Year',
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
            ),

            Spacer(),

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
            SizedBox(height: 40,)



          ],
        ),
      ),
    );
  }
}
