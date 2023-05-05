import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../common/reusable_textformfield.dart';
import '../../common/socialicon.dart';
import '../login_screen/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF292b2e),

        body: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Create Account",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500,color: Colors.white),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  //Name
                  Text(
                    "Name",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // Name TextField
                  ReusableTextForm(
                    hintText: "Name",
                    prefixIcon: Icons.person,
                    validator: (v){
                      if(v == null || v.isEmpty){
                        return 'This field is required';
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //email
                  Text(
                    "E-mail",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,color: Colors.white),
                  ),
                  // Email
                  SizedBox(
                    height: 10,
                  ),
                  // Email
                  ReusableTextForm(
                    hintText: "Email",
                    prefixIcon: Icons.email_outlined,
                    keyboardType: TextInputType.emailAddress,
                    validator: (v){
                      if(v == null || v.isEmpty){
                        return 'This field is required';
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //password
                  Text(
                    "Password",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,color: Colors.white),
                  ),
                  // password TextField
                  SizedBox(
                    height: 10,
                  ),
                  // password
                  ReusableTextForm(
                    hintText: "Password",
                    prefixIcon: Icons.lock,
                    suffixIcon: Icon(Icons.visibility,color: Colors.white,),
                    keyboardType: TextInputType.emailAddress,
                    validator: (v){
                      if(v == null || v.isEmpty){
                        return 'This field is required';
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Promo Code",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,color: Colors.white),
                  ),
                  // password TextField
                  SizedBox(
                    height: 10,
                  ),
                  // password
                  ReusableTextForm(
                    hintText: "Promo Code",
                    prefixIcon: Icons.code,
                    keyboardType: TextInputType.emailAddress,
                    validator: (v){
                      if(v == null || v.isEmpty){
                        return 'This field is required';
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //Sign Up
                  Container(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.black),
                      onPressed: () {
                        if(formKey.currentState!.validate()){
                          Fluttertoast.showToast(
                            msg: "Account Created",
                            //backgroundColor: Colors.transparent,
                            textColor: Colors.white,
                          );
                        }
                        else {
                          Fluttertoast.showToast(
                            msg: "All fields are required",
                            //backgroundColor: Colors.transparent,
                            textColor: Colors.white,
                          );
                        }
                      },
                      child: Text("Sign Up"),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?",style: TextStyle(color: Colors.white),),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_){
                          return LogInScreen();
                        }));
                      }, child: Text("Login",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),))
                    ],),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

