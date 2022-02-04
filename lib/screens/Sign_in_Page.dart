import 'package:ffghfhg/helper/custom_button_field.dart';
import 'package:ffghfhg/helper/custom_text_field.dart';
import 'package:ffghfhg/screens/home_page.dart';
import 'package:ffghfhg/screens/registar_page.dart';
import 'package:ffghfhg/utils/custom_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class signinpage extends StatefulWidget {
  const signinpage({Key? key}) : super(key: key);

  @override
  _signinpageState createState() => _signinpageState();
}

 // GlobalKey <FormState> _formKey= GlobalKey();

AllColor allColor = AllColor();
TextEditingController emailEditingController = TextEditingController();
TextEditingController passEditingController = TextEditingController();

class _signinpageState extends State<signinpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: SingleChildScrollView(
        child: Form(
          // key: _formKey,
          child: Column(
            children: [
              Image(
                image: AssetImage('./images/messenger_love.png'),
                height: 170,
                width: 150,
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextField(
                hintText: 'example@gmail.com',
                labelText: 'Email',
                prifixIcon: Icon(Icons.mail_outline),
                obsecureVal: false,
                controller: emailEditingController,
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextField(
                hintText: 'Enter Your Password',
                labelText: 'Password',
                prifixIcon: Icon(Icons.lock),
                obsecureVal: true,
                controller: passEditingController,
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  // if(_formKey.currentState!.validate())
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: CustomButtonField(
                  height: 50,
                  wight: 300,
                  btnText: 'LOG IN',
                ),
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RegisterPage()));
                },
                child: CustomButtonField(
                  btnText: 'Register Now',
                  wight: 300,
                  height: 50,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
