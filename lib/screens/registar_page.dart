import 'package:ffghfhg/helper/custom_button_field.dart';
import 'package:ffghfhg/helper/custom_text_field.dart';
import 'package:ffghfhg/screens/Sign_in_Page.dart';
import 'package:ffghfhg/utils/custom_colors.dart';
import 'package:flutter/material.dart';
class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

 // GlobalKey <FormState> _formKey= GlobalKey();

AllColor _allColor= AllColor();
TextEditingController emailEditingController = TextEditingController();
TextEditingController passEditingController = TextEditingController();
TextEditingController repassEditingController = TextEditingController();

class _RegisterPageState extends State<RegisterPage> {
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

              SizedBox(height: 15,),

              CustomTextField(
                hintText: 'Re-enter Your Password',
                labelText: 'Confirm Password',
                prifixIcon: Icon(Icons.lock),
                obsecureVal: true,
                controller: repassEditingController,
              ),

              SizedBox(
                height: 15,
              ),

              InkWell(
                onTap: () {
                  // if(_formKey.currentState!.validate())
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>signinpage()));
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
    );  }
}
