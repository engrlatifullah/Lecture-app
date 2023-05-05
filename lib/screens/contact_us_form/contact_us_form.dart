import 'package:flutter/material.dart';

import '../../common/reusable_textformfield.dart';

class ContactUsForm extends StatelessWidget {
  const ContactUsForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF292b2e),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Text(
                "Name",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 10,),
              ReusableTextForm(hintText: 'Name',prefixIcon: Icons.person,),
              SizedBox(height: 20,),
              Text(
                "Phone",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 10,),
              ReusableTextForm(hintText: 'Phone No',prefixIcon: Icons.phone,),
              SizedBox(height: 20,),
              Text(
                "Email",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 10,),
              ReusableTextForm(hintText: 'Email',prefixIcon: Icons.email,),
              SizedBox(height: 20,),
              Text(
                "Message",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 10,),
              ReusableTextForm(hintText: 'Message',prefixIcon: Icons.message,),
              SizedBox(height: 20,),
              Container(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.black),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Send"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
