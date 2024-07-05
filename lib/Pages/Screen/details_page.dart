import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../../Widget/bold_text_style_widget.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {

  int a=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 40,left: 20,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(icon : Icon (Icons.arrow_back_ios),color: Colors.black,
              onPressed: () {
               Get.back(canPop: true);
              },),
            Image.asset('assets/images/salad2.png'
              ,width: MediaQuery.of(context).size.width ,
              height: MediaQuery.of(context).size.height/2.5,
              fit: BoxFit.fill
            ),

            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Mediterraneean',style: AppWidget.SemiBoldTextStyleWidget(),),
                    Text('Chickpa  Salad',style: AppWidget.SemiBoldTextStyleWidget(),),
                  ],
                ),
                Spacer(),

                GestureDetector(
                  onTap: (){
                    if(a>1){
                      a--;
                    }
                    setState(() {

                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(8)),
                    child: Icon(Icons.remove,color: Colors.white,),),
                ),

                SizedBox(width: 20,),

                Text(a.toString(),style: AppWidget.SemiBoldTextStyleWidget(),),

                SizedBox(width: 20,),
                GestureDetector(
                  onTap: (){
                    a++;
                    setState(() {

                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(8)),
                    child: Icon(Icons.add,color: Colors.white,),),
                ),
              ],
            ),
            SizedBox(height: 5.0,),
            Text('I make my Mediterranean Chopped Salad with simple vegetables like tomatoes, cucumbers, and onions mixed with chickpeas, feta cheese, and olives and toss it all in an herby, lemony vinaigrette! All you have to do is chop all the ingredients, make the dressing, and then mix everything together right before you serve it.',maxLines: 5,style: AppWidget.LightTextStyleWidget(),),
            SizedBox(height: 10.0,),
            Row(
              children: [
                Text("Delivery Time",style: AppWidget.SemiBoldTextStyleWidget(),),
                SizedBox(width: 25.0,),
                Icon(Icons.alarm),
                SizedBox(width: 5.0,),
                Text("30 min",style: AppWidget.SemiBoldTextStyleWidget(),)
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Total Price',style: AppWidget.SemiBoldTextStyleWidget(),),
                      Text("\$28",style: AppWidget.TextBoldStyleWidget(),)
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/2,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Add to cart',style: TextStyle(color: Colors.white,fontSize: 16,fontFamily: 'Poppins'),),
                        SizedBox(width: 30,),
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(6)),
                            child: Icon(
                              Icons.shopping_cart_outlined,color: Colors.white,)),
                        SizedBox(width: 10,)
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
