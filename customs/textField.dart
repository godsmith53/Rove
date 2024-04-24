import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final Icon myIcon;
  final String myLabelText;
  final bool myObscureText;

  const MyTextField({
    super.key,
    required this.myIcon,
    required this.myLabelText,
    required this.myObscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: TextFormField(
        obscureText: myObscureText,
        decoration: InputDecoration(
          labelText: myLabelText,
          prefixIcon: myIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
