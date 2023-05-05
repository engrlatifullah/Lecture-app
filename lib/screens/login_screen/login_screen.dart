import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../common/reusable_textformfield.dart';
import '../forgot_password_screen/forgot_password_screen.dart';
import '../navigation_bar/navigation_bar.dart';
import '../signup_screen/signup_screen.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  bool chkBtnbValue = false;
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
                    "Login",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500,color: Colors.white),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  //email
                  Text(
                    "E-mail",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // Email TextField
                  ReusableTextForm(
                    hintText: "Your Email",
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
                  SizedBox(
                    height: 10,
                  ),
                  // password TextField
                  ReusableTextForm(
                    hintText: "Password",
                    obscureText: true,
                    prefixIcon: Icons.lock_outline,
                    suffixIcon: Icon(Icons.visibility,color: Colors.white),
                    keyboardType: TextInputType.emailAddress,
                    validator: (v){
                      if(v == null || v.isEmpty){
                        return 'This field is required';
                      }
                    },
                  ),
                  SizedBox(height: 20,),
                  //remember me
                  Row(
                    children: [
                      SizedBox(
                        height: 30,
                        width: 30,
                        child: Checkbox(
                          fillColor: MaterialStateProperty.all(Colors.white),checkColor: Colors.black,
                          value: chkBtnbValue,
                          onChanged: (value) {
                            setState(() {
                              chkBtnbValue = value!;
                            });
                          },
                        ),
                      ),
                      SizedBox(width: 10,),
                      Text(
                        "Remember me",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                            color: Colors.white,
                        ),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_){
                            return ForgotPasswordScreen();
                          }));
                        },
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
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
                            msg: "Login successfully",
                            //backgroundColor: Colors.transparent,
                            textColor: Colors.white,
                          );
                          Navigator.push(context, MaterialPageRoute(builder: (_){
                            return CustomNavBar();
                          },),);
                        }
                        else {
                          Fluttertoast.showToast(
                            msg: "All fields are required",
                            //backgroundColor: Colors.transparent,
                            textColor: Colors.white,
                          );
                        }
                      },
                      child: Text("Login"),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text("Don't have an account ?",style: TextStyle(color: Colors.white),),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_){
                        return SignUpScreen();
                      }));
                    }, child: Text("Sign up",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),))
                  ],),
                  SizedBox(
                    height: 40,
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
