import 'package:ffghfhg/utils/custom_colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {

  String hintText;
  String labelText;
  bool obsecureVal;
  TextEditingController controller;
  Widget prifixIcon;

  CustomTextField({Key? key,
  required this.controller,
  required this.prifixIcon,
  required this.labelText,
  required this.hintText,
  required this.obsecureVal,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

AllColor _allColor = AllColor();

String passStore="";

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // validator: (value){
      //   bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      //       .hasMatch(value!);
      //   if(value.isEmpty)
      //     return 'This field is can not be empty!';
      //
      //   if(widget.labelText=="Email"){
      //     if(!emailValid)
      //       return "Email formet is not correct!";
      //   }
      //   if(widget.labelText=="Password"){
      //     passStore=value;
      //     if(value.length<6)
      //       return "Password must be atleast 6 char!";
      //   }
      //   if(widget.labelText== "Confirm Password"){
      //     if(passStore!=value){
      //       return "Password didn't match";
      //     }
      //   }
      //
      // },

      controller: widget.controller,
      obscureText: widget.obsecureVal,
      cursorColor: AllColor.appColor,
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: AllColor.appColor
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          prefixIcon: widget.prifixIcon,
          hintText: widget.hintText,
          hintStyle: TextStyle(color: AllColor.appColor),
          labelText: widget.labelText,
          labelStyle: TextStyle(color: AllColor.appColor),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: AllColor.appColor))),
    );
  }
}

