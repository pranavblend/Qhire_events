import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final bool obscureText;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;
  final Widget? suffixIcon;

  const CustomFormField({
    Key? key,
    this.controller,
    this.hintText = '',
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
    this.onChanged,
    this.validator,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        keyboardType: keyboardType,
        textInputAction: textInputAction,
        onChanged: onChanged,
        validator: validator,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 20),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.black.withOpacity(.5)),
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
              color: Colors.black.withOpacity(.2),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: Colors.black.withOpacity(.05),
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black.withOpacity(.2),
            ),
          ),
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
