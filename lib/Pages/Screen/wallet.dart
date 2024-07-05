import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:food_delivery/Widget/app_constant.dart';
import 'package:food_delivery/Widget/bold_text_style_widget.dart';
import 'package:http/http.dart' as http;

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {

  Map<String,dynamic>? paymentIntent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 60.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Material(
              elevation: 5,
              child: Container(
                padding: EdgeInsets.only(bottom: 10),
                  child: Center(child: Text("Wallet",style: AppWidget.HeadLineBoldStyleWidget(),))),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xFFF2F2F2),
              ),
              child: Row(
                children: [
                  Image.asset("assets/images/wallet.png",height: 60,width: 60,fit: BoxFit.cover,),
                  SizedBox(width: 25,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Your Wallet",style: AppWidget.LightTextStyleWidget(),),
                      SizedBox(height: 3,),
                      Text("\$" + "100",style: AppWidget.TextBoldStyleWidget(),),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text("Add Money",style: AppWidget.TextBoldStyleWidget(),),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: (){
                    makePayment('100');
                  },
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all( color: Color(0xFFE9E2E2),),
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: Text("\$" + "100",style: AppWidget.SemiBoldTextStyleWidget(),),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    makePayment('500');
                  },
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border.all( color: Color(0xFFE9E2E2),),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Text("\$" + "500",style: AppWidget.SemiBoldTextStyleWidget(),),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                   makePayment('1000');
                  },
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border.all( color: Color(0xFFE9E2E2),),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Text("\$" + "1000",style: AppWidget.SemiBoldTextStyleWidget(),),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    makePayment('2000');
                  },
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        border: Border.all( color: Color(0xFFE9E2E2),),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Text("\$" + "2000",style: AppWidget.SemiBoldTextStyleWidget(),),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(vertical: 12),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xFF008080),
                borderRadius: BorderRadius.circular(8)
              ),
              child: Center(child: Text('Add Money',style: TextStyle(color: Colors.white,fontFamily: "Poppins",fontWeight: FontWeight.bold,fontSize: 16),)),
            )
          ],
        ),
      ),
    );
  }

  Future<void> makePayment(String amount) async {
    try{
      paymentIntent = await createPaymentIntent(amount, "USD");
      await Stripe.instance.initPaymentSheet(paymentSheetParameters: SetupPaymentSheetParameters(
          paymentIntentClientSecret: paymentIntent!['client_secret'],
        style: ThemeMode.dark,
        merchantDisplayName: 'Masoom Jaat'
      )).then((value) {
        displayPaymentSheet(amount);
      } );



    }catch(e,s){
      print('exception: $e$s');
    }
  }
  displayPaymentSheet(String amount) async {
    try{
      await Stripe.instance.presentPaymentSheet().then((value) async {
        showDialog(context: context, builder: (_) =>
            AlertDialog(
              content: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.check_circle, color: Colors.green,),
                      Text("Payment Successful")
                    ],
                  )
                ],
              ),
            ));

        paymentIntent = null;
      }).onError((error, stackTrace) {
        print('Error is -----> $error $stackTrace');
      });
    }
    on StripeException catch(e){
      print("Error is: ------> $e");
      showDialog(context: context, builder: (_)=> const AlertDialog(
        content: Text("Cancelled"),
      ));
    }
    catch(e){
      print('$e');
    }
  }

  createPaymentIntent(String amount , String currency) async {
    try {
      Map<String,dynamic> body ={
        'amount ': calculatAmount (amount),
        'currency': currency,
        'payment_method_types[]':'card',
      };
      var response = await  http.post(
        Uri.parse('http://api.stripe.com/v1/payment_intents'),
        headers: {
          'Authorization':'Bearer $secretKey',
          'Content-Type': 'application/x-www-form-urlencoded'
        },
        body: body,
      );
      print("Payment Intent Body---> ${response.body.toString()}");
      return jsonDecode(response.body);
    }
    catch(err){
      print("err charging user : ${err.toString()}");

    }
  }
  calculatAmount(String amount ){
    final calculatAmount=(int.parse(amount)*100);
    return calculatAmount.toString();
  }
}
