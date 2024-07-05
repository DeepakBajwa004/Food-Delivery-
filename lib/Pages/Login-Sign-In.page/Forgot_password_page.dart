
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Widget/bold_text_style_widget.dart';
import 'Sign_up_page.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {

  TextEditingController mailcontroller = new TextEditingController();

  String email="";

  final _formkey= GlobalKey<FormState>();

  resetPassword() async {
    try{
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      Get.snackbar("Password Reset Email has been sent", "Successfully");
    } on FirebaseAuthException catch (e){
      if(e.code=="user-not-found"){
        Get.snackbar("No user found", "sign-up first");
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xFFff5c30),
      body: Container(
        //height: 154,
        //height: MediaQuery.of(context).size.height/2.5,
        child: Column(
          children: [
            SizedBox(
              height: 70.0,
            ),
            Container(
              alignment: Alignment.topCenter,
              child: Text("Password Recovery",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30.0),),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text("Enter Your E-mail",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.white),),
            Expanded(
                child: Form(
                  key: _formkey,
                  child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: ListView(
                children: [
                  TextFormField(
                      controller: mailcontroller,
                      decoration: InputDecoration(
                          hintText: 'Email',
                          fillColor: Colors.white,
                          filled: true,
                          helperStyle: AppWidget.SemiBoldTextStyleWidget(),
                          prefixIcon: Icon(Icons.email_outlined,color: Colors.black,),
                          hintStyle: TextStyle(color: Colors.black)
                      ),
                      validator: (value) {
                        if(value==null||value.isEmpty){
                          return "Enter Your E-mail";
                        }
                        return null;
                      },
                    ),
                  SizedBox(height: 20,),
              GestureDetector(
                onTap: (){
                  if(_formkey.currentState!.validate()){
                    setState(() {
                      email= mailcontroller.text;
                    });
                    resetPassword();
                  }
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  width: 140,
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
                  child: Center(child: Text("Send Email",style: TextStyle(fontFamily: 'Poppins1',fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold))),
                ),
              ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account? ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0,color: Colors.white),),
                      GestureDetector(
                          onTap: (){
                            Get.to(()=>SignUpPage());
                          },
                          child:
                          Text("Create", style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.black),))
                    ],
                  ),
                ],
              ),
            ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
