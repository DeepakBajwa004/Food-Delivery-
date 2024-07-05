


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/Pages/Screen/details_page.dart';
import 'package:food_delivery/Widget/bold_text_style_widget.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool icecream=false , burger=false, pizza=false, salad=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 40,left: 20,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hello, Deepak',
                    style: AppWidget.TextBoldStyleWidget()
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),color: Colors.black),
                    child: Icon(Icons.shopping_cart_outlined,color: Colors.white,),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Text(
                  'Delicious Food',
                  style: AppWidget.HeadLineBoldStyleWidget()
              ),
              Text(
                  'Discover and Get Great Food',
                  style: AppWidget.LightTextStyleWidget()
              ),
              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.only(right: 10),
                  child: showItems()),
              SizedBox(height: 15,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Get.to(()=>DetailsPage());
                      },
                      child: Container(
                        margin: EdgeInsets.all(4),
                        child: Material(
                          elevation: 4,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            padding: EdgeInsets.all(5),
                            child : Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(child: Image.asset('assets/images/salad2.png',height: 170,width: 170,)),
                                Text('Veggie Taco Hash',style: AppWidget.SemiBoldTextStyleWidget(),),
                                SizedBox(height: 4.0,),
                                Text('Fresh And Healthy',style: AppWidget.LightTextStyleWidget(),),
                                SizedBox(height: 4.0,),
                                Text('\$25',style: AppWidget.SemiBoldTextStyleWidget(),)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15,),
                    GestureDetector(
                      onTap: (){
                        Get.to(()=>DetailsPage());
                      },
                      child: Container(
                        margin: EdgeInsets.all(4),
                        child: Material(
                          elevation: 4,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            padding: EdgeInsets.all(5),
                            child : Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(child: Image.asset('assets/images/salad2.png',height: 170,width: 170,)),
                                Text('Veggie Taco Hash',style: AppWidget.SemiBoldTextStyleWidget(),),
                                SizedBox(height: 4.0,),
                                Text('Fresh And Healthy',style: AppWidget.LightTextStyleWidget(),),
                                SizedBox(height: 4.0,),
                                Text('\$25',style: AppWidget.SemiBoldTextStyleWidget(),)

                              ],
                            )
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15,),
                    GestureDetector(
                      onTap: (){
                        Get.to(()=>DetailsPage());
                      },
                      child: Container(
                        margin: EdgeInsets.all(4),
                        child: Material(
                          elevation: 4,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            padding: EdgeInsets.all(5),
                            child : Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(child: Image.asset('assets/images/salad2.png',height: 170,width: 170,)),
                                Text('Veggie Taco Hash',style: AppWidget.SemiBoldTextStyleWidget(),),
                                SizedBox(height: 4.0,),
                                Text('Fresh And Healthy',style: AppWidget.LightTextStyleWidget(),),
                                SizedBox(height: 4.0,),
                                Text('\$25',style: AppWidget.SemiBoldTextStyleWidget(),)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15,),
                    GestureDetector(
                      onTap: (){
                        Get.to(()=>DetailsPage());
                      },
                      child: Container(
                        margin: EdgeInsets.all(4),
                        child: Material(
                          elevation: 4,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            padding: EdgeInsets.all(5),
                            child : Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(child: Image.asset('assets/images/salad2.png',height: 170,width: 170,)),
                                Text('Veggie Taco Hash',style: AppWidget.SemiBoldTextStyleWidget(),),
                                SizedBox(height: 4.0,),
                                Text('Fresh And Healthy',style: AppWidget.LightTextStyleWidget(),),
                                SizedBox(height: 4.0,),
                                Text('\$25',style: AppWidget.SemiBoldTextStyleWidget(),)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15,),
                    GestureDetector(
                      onTap: (){
                        Get.to(()=>DetailsPage());
                      },
                      child: Container(
                        margin: EdgeInsets.all(4),
                        child: Material(
                          elevation: 4,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            padding: EdgeInsets.all(5),
                            child : Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(child: Image.asset('assets/images/salad2.png',height: 170,width: 170,)),
                                Text('Veggie Taco Hash',style: AppWidget.SemiBoldTextStyleWidget(),),
                                SizedBox(height: 4.0,),
                                Text('Fresh And Healthy',style: AppWidget.LightTextStyleWidget(),),
                                SizedBox(height: 4.0,),
                                Text('\$25',style: AppWidget.SemiBoldTextStyleWidget(),)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15,),

                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                margin: EdgeInsets.only(right: 10),
                child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/salad2.png',height: 120,width: 120,),
                        SizedBox(width: 20,),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(1),
                              width: MediaQuery.of(context).size.width/2,
                                child: Text('Mediterraneean Chickpa  Salad',style: AppWidget.SemiBoldTextStyleWidget(),)),
                            SizedBox(height: 5.0,),
                            Container(
                              width: MediaQuery.of(context).size.width/2,
                                child: Text('Honney goot cheess',style: AppWidget.LightTextStyleWidget(),)),
                            SizedBox(height: 5.0,),
                            Container(
                              width: MediaQuery.of(context).size.width/2,
                                child: Text('\$28',style: AppWidget.SemiBoldTextStyleWidget(),)),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                margin: EdgeInsets.only(right: 10),
                child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/salad2.png',height: 120,width: 120,),
                        SizedBox(width: 20,),
                        Column(
                          children: [
                            Container(
                                padding: EdgeInsets.all(1),
                                width: MediaQuery.of(context).size.width/2,
                                child: Text('Mediterraneean Chickpa  Salad',style: AppWidget.SemiBoldTextStyleWidget(),)),
                            SizedBox(height: 5.0,),
                            Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text('Honney goot cheess',style: AppWidget.LightTextStyleWidget(),)),
                            SizedBox(height: 5.0,),
                            Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text('\$28',style: AppWidget.SemiBoldTextStyleWidget(),)),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                margin: EdgeInsets.only(right: 10),
                child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/salad2.png',height: 120,width: 120,),
                        SizedBox(width: 20,),
                        Column(
                          children: [
                            Container(
                                padding: EdgeInsets.all(1),
                                width: MediaQuery.of(context).size.width/2,
                                child: Text('Mediterraneean Chickpa  Salad',style: AppWidget.SemiBoldTextStyleWidget(),)),
                            SizedBox(height: 5.0,),
                            Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text('Honney goot cheess',style: AppWidget.LightTextStyleWidget(),)),
                            SizedBox(height: 5.0,),
                            Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text('\$28',style: AppWidget.SemiBoldTextStyleWidget(),)),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  Widget showItems(){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: (){
            icecream=true;
            burger=false;
            pizza=false;
            salad=false;
            setState(() {
            });
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Container(

              decoration: BoxDecoration(
                  color: icecream? Colors.black: Colors.white,borderRadius: BorderRadius.circular(10)
              ),
              padding: EdgeInsets.all(8),
              child:
              Image.asset('assets/images/ice-cream.png',height: 40,width: 40, fit: BoxFit.cover,color: icecream? Colors.white:Colors.black,),
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            icecream=false;
            burger=true;
            pizza=false;
            salad=false;
            setState(() {
            });
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: burger? Colors.black: Colors.white,borderRadius: BorderRadius.circular(10)
              ),
              padding: EdgeInsets.all(8),
              child:
              Image.asset('assets/images/img.png',height: 40,width: 40, fit: BoxFit.cover,color: burger? Colors.white:Colors.black,),
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            icecream=false;
            burger=false;
            pizza=true;
            salad=false;
            setState(() {
            });
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: pizza? Colors.black: Colors.white,borderRadius: BorderRadius.circular(10)
              ),
              padding: EdgeInsets.all(8),
              child:
              Image.asset('assets/images/pizza.png',height: 40,width: 40, fit: BoxFit.cover,color: pizza? Colors.white:Colors.black,),
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            icecream=false;
            burger=false;
            pizza=false;
            salad=true;
            setState(() {
            });
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                  color: salad? Colors.black: Colors.white,borderRadius: BorderRadius.circular(10)
              ),
              padding: EdgeInsets.all(8),
              child:
              Image.asset('assets/images/salad.png',height: 40,width: 40, fit: BoxFit.cover,color: salad? Colors.white:Colors.black,),
            ),
          ),
        ),
        //SizedBox(height: 50,),
      ],
    );
  }
}
