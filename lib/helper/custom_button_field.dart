import 'package:ffghfhg/utils/custom_colors.dart';
import 'package:flutter/material.dart';

class CustomButtonField extends StatefulWidget {

  double height;
  double wight;
  String btnText;

   CustomButtonField({Key? key,
   required this.height,
   required this.btnText,
   required this.wight,
   }) : super(key: key);

  @override
  _CustomButtonFieldState createState() => _CustomButtonFieldState();
}

AllColor _allColor = AllColor();

class _CustomButtonFieldState extends State<CustomButtonField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.wight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: AllColor.appColor,
      ),
      child: Center(
          child: Text( widget.btnText,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 25, color: Colors.indigo),
      )),
    );
  }
}
