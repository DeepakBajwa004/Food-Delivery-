

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import '../../Widget/bold_text_style_widget.dart';
import '../bottomnav.bar.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
String name="", email="", password="";

TextEditingController namecontroller = new TextEditingController();
TextEditingController emailcontroller = new TextEditingController();
TextEditingController passwordcontroller = new TextEditingController();

final GlobalKey<FormState> _formkey= GlobalKey<FormState>();

registrations() async {
  if(password!=null){
    try{
         UserCredential userCredential=await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
         Get.snackbar("Registration Successfully", "Yeah...!");
         Get.to(()=>BottomNavBar());
    }
    // on FirebaseAuthException catch(e){
    //   if(e.code=='email-already-in-use'){
    //     Get.snackbar("The email address is already in use", 'Use another email');
    //   }
    //   else{
    //     Get.snackbar("An error occurred", 'Network Problem');
    //   }
    // }
    on FirebaseException catch(e){
      Get.snackbar("FirebaseException", e.message.toString());

    }
    on FormatException catch(e){
      Get.snackbar("FormatException", e.message.toString());

    }
    // on PlatformException catch(e){
    //   Get.snackbar("Registration Successfully", e.message.toString());
    //
    // }
    catch(e)  {
      // Get.snackbar(titleText: "Registration Successfully", messageText: e.toString());
      // if(e.code=="Week-password"){
      //  Get.snackbar("WeeK Password", "Re-Enter Password");
      // }
      // else if (e.code=="E-mail is already use"){
      //   Get.snackbar("E-mail is already use", "Create a new account");
      // }
    }

  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2.5,
                decoration: BoxDecoration(gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    colors: [
                      Color(0xFFff5c30),
                      Color(0xFFe74b1a)
                    ])),
              ),
              Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/3),
                height: MediaQuery.of(context).size.height/2,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)
                    )),
                child: Text(''),
              ),
              Container(
                margin: EdgeInsets.only(top: 60.0,left: 20,right: 20),
                child: Column(
                  children: [
                    Center(child: Image.asset('assets/images/logo.png',
                      width: MediaQuery.of(context).size.width/1.5,fit: BoxFit.cover,)),
                    SizedBox(height: 50,),
                    Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: EdgeInsets.only(left: 20,right: 20),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height/1.8,
                        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                        child: Form(
                          key: _formkey,
                          child: Column(
                            children: [
                              SizedBox(height: 20,),
                              Text('SignUp',style: AppWidget.HeadLineBoldStyleWidget(),),
                              TextFormField(
                                controller: namecontroller,
                                decoration: InputDecoration(
                                    hintText: 'Name',helperStyle: AppWidget.SemiBoldTextStyleWidget(),
                                    prefixIcon: Icon(Icons.person)
                                ),
                                validator: (value){
                                  if(value==null|| value.isEmpty){
                                    return "Please Enter Name";
                                  }
                                  return null;
                                },
                              ),
                          SizedBox(height: 20,),
                              TextFormField(
                                controller: emailcontroller,
                                decoration: InputDecoration(
                                    hintText: 'Email',helperStyle: AppWidget.SemiBoldTextStyleWidget(),
                                    prefixIcon: Icon(Icons.email_outlined)
                                ),
                                validator: (value){
                                  if(value==null|| value.isEmpty){
                                    return "Please Enter Email";
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 20,),
                              TextFormField(
                                controller: passwordcontroller,
                                obscureText: true,
                                decoration: InputDecoration(
                                  hintText: 'Password',helperStyle: AppWidget.SemiBoldTextStyleWidget(),
                                  prefixIcon: Icon(Icons.lock),
                                ),
                                validator: (value){
                                  if(value==null|| value.isEmpty){
                                    return "Please Enter Password";
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 30,),
                              GestureDetector(
                                onTap: ()async{
                                  if(_formkey.currentState!.validate()){
                                    setState(() {
                                      name=namecontroller.text;
                                      email=emailcontroller.text;
                                      password=passwordcontroller.text;
                                    });
                                  }
                                  registrations();
                                    },
                                child: Material(
                                  elevation: 5,
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    padding: EdgeInsets.symmetric(vertical: 10),
                                    width: 200,
                                    decoration: BoxDecoration(color: Color(0xffff5722),borderRadius: BorderRadius.circular(10)),
                                    child: Center(child: Text("Sign Up",style: TextStyle(fontFamily: 'Poppins1',fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold))),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ),
                    ),
                    SizedBox(height: 70,),
                    GestureDetector(
                        onTap: (){
                          Get.back();
                        },
                        child: Text("Already have an account? Login",style: AppWidget.SemiBoldTextStyleWidget(),))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
