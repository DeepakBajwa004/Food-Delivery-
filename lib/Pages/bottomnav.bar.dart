import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/Pages/Screen/HomePage.dart';
import 'package:food_delivery/Pages/Screen/order.dart';
import 'package:food_delivery/Pages/Screen/profile.dart';
import 'package:food_delivery/Pages/Screen/wallet.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}
class _BottomNavBarState extends State<BottomNavBar> {

  int currentTabIndex=0;
  late List<Widget> pages;
  late Widget currentPage;
  late HomePage homepage;
  late Profile profile;
  late Order order;
  late Wallet wallet;

  @override
  void initState() {
    homepage =HomePage();
    order =Order();
    wallet =Wallet();
    profile =Profile();
    pages =[homepage,order,wallet,profile,];
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 44,
        backgroundColor: Colors.white,
        color: Colors.black,
        animationDuration: Duration(milliseconds: 500),
        onTap: (int index){
         setState(() {
           currentTabIndex=index;
         });
        },
        items: [
        Icon(Icons.home,color: Colors.white,),
        Icon(Icons.shopping_cart_outlined,color: Colors.white,),
        Icon(Icons.wallet,color: Colors.white,),
        Icon(Icons.person,color: Colors.white,),
      ],),
      body: pages[currentTabIndex],

    );
  }
}

