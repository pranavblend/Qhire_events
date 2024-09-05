import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobminiproject/Customwidgets/textfieldclass.dart';

class Customformfield extends StatefulWidget {
  const Customformfield({super.key});

  @override
  State<Customformfield> createState() => _CustomformfieldState();
}

class _CustomformfieldState extends State<Customformfield> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      child: SizedBox(
        width: 400,child: Column(
        children: [
          CustomFormField(
            controller: emailController,
            hintText: '    Enter your email',
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            suffixIcon: Icon(Icons.email, color: Color.fromRGBO(232, 143, 27, 1),)
          ),
          SizedBox(height: 16.0),
          CustomFormField(
            controller: passwordController,
            hintText: '    Enter your password',
            obscureText: true,
            keyboardType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.done,
            suffixIcon: Icon(Icons.remove_red_eye, color: Color.fromRGBO(232, 143, 27, 1),)
          ),

        ],
      ),
      ),
    );
  }
}