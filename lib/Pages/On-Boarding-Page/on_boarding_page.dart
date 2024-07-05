
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:concentric_transition/concentric_transition.dart';
import 'package:food_delivery/Pages/Login-Sign-In.page/Login_Page.dart';
import 'package:lottie/lottie.dart';
import '../../Widget/cart_planet.dart';


class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {

  final data = [
    CardData(
        title: 'Select from our\nBest Menu',
        subtitle: 'Pick your Food from our menu\nMore than 35 times',
        image:  LottieBuilder.asset('assets/images/Animation - 1716842286115.json'),
        backgroundColor: Colors.blue.shade300,
        titleColor: Colors.black,
        subtitleColor: Color(0xFFFFF3DA)),
    CardData(
        title: 'Easy and Online Payment',
        subtitle: 'You can pay cash on delivery and\nCard Payment avilable',
        image: LottieBuilder.asset('assets/images/Animation - 1716841993056.json'),
        backgroundColor: Colors.blue.shade600,
        titleColor: Color(0xffff5722),
        subtitleColor: Colors.yellow),
    CardData(
        title: 'Quick Delivery at Your\nDoorstep',
        subtitle: 'Deliver your food at your\ndoorstep',
        image: LottieBuilder.asset('assets/images/Animation - 1716842388885.json'),
        backgroundColor: Colors.blue.shade900,
        titleColor: Color(0xffff5722),
        subtitleColor: Colors.black),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConcentricPageView(
        nextButtonBuilder: (context)=>Padding(padding: EdgeInsets.all(3),
          child: Icon(Icons.arrow_forward_ios,size: 35,),),
        // radius: 200,
        itemCount: data.length,
        colors: data.map((e) => e.backgroundColor).toList(),
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (int index) {
          return CardUIView(
              data: data[index]
          );
        },
        onChange: (index){
          print(index);
        },
        onFinish: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return LoginPage();
          }));
        },
      ),
    );
  }

}
