

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/Pages/Login-Sign-In.page/Forgot_password_page.dart';
import 'package:food_delivery/Pages/Login-Sign-In.page/Sign_up_page.dart';
import 'package:food_delivery/Widget/bold_text_style_widget.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../bottomnav.bar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String email="", password="";

  TextEditingController useremailcontroller = new TextEditingController();
  TextEditingController userpasswordcontroller = new TextEditingController();

  final GlobalKey<FormState> _formkey= GlobalKey<FormState>();

  userlogin () async {
  try{
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: email,password:password);
    Get.snackbar("Login Successfully", "Yeah...!");
    Get.to(()=>BottomNavBar());
  }
  // on FirebaseAuthException catch(e){
  //   if(e.code=='user-not-found'|| e.code=='wrong-password'){
  //     Get.snackbar("User Not Found", 'Wrong Password');
  //   }
  //   else{
  //     Get.snackbar("An error occurred", 'Network Problem');
  //   }
  // }
  on FirebaseAuthException catch(e){
    Get.snackbar("FirebaseAuthException", 'user not found');
  }
  on FirebaseException catch(e){
    Get.snackbar("FirebaseException", 'wrnog password');

  }
  on FormatException catch(e){
    Get.snackbar("FormatException", e.message.toString());

  }
  catch(e){
    // if (e.code=="user-not-found"){
    //   Get.snackbar("Now User Found ", "Please Register with Email First");
    // }
    // else if (e.code=="wrong-password"){
    //   Get.snackbar("Worng Password", "Re-Enter Your Password");
    // }
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
                        height: MediaQuery.of(context).size.height/2,
                        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                        child: Form(
                          key: _formkey,
                          child: Column(
                            children: [
                              SizedBox(height: 20,),
                              Text('Login',style: AppWidget.HeadLineBoldStyleWidget(),),
                              TextFormField(
                                controller: useremailcontroller,
                                decoration: InputDecoration(
                                    hintText: 'Email',helperStyle: AppWidget.SemiBoldTextStyleWidget(),
                                    prefixIcon: Icon(Icons.email_outlined)
                                ),
                                validator: (value) {
                                  if(value==null||value.isEmpty){
                                    return "Enter Your E-mail";
                                  }
                                  return null;
                                }
                              ),
                              SizedBox(height: 20,),
                              TextFormField(
                                controller: userpasswordcontroller,
                                obscureText: true,
                                decoration: InputDecoration(
                                  hintText: 'Password',helperStyle: AppWidget.SemiBoldTextStyleWidget(),
                                  prefixIcon: Icon(Icons.lock),
                                ),
                                  validator: (value) {
                                    if(value==null||value.isEmpty){
                                      return "Enter Your Password";
                                    }
                                    return null;
                                  }
                              ),
                              SizedBox(height: 10,),
                              GestureDetector(
                                onTap: (){
                                  Get.to(()=>ForgotPassword());
                                },
                                child: Container(
                                    alignment: Alignment.topRight,
                                    child: Text('Forgot Password?',style: AppWidget.SemiBoldTextStyleWidget(),)),
                              ),
                              SizedBox(height: 30,),
                              GestureDetector(
                                onTap: ()async{
                                  if(_formkey.currentState!.validate()){
                                    setState(() {
                                      email=useremailcontroller.text;
                                      password=userpasswordcontroller.text;
                                      userlogin();
                                    });
                                  }
                                },
                                child: Material(
                                  elevation: 5,
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    padding: EdgeInsets.symmetric(vertical: 10),
                                    width: 200,
                                    decoration: BoxDecoration(color: Color(0xffff5722),borderRadius: BorderRadius.circular(10)),
                                    child: Center(child: Text("Login",style: TextStyle(fontFamily: 'Poppins1',fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold))),
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
                          Get.to(()=>SignUpPage());
                        },
                        child: Text("Don't have an account? Sign up",style: AppWidget.SemiBoldTextStyleWidget(),))
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
