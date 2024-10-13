import 'package:_summit_homes/pages/home.dart';
import 'package:_summit_homes/pages/order.dart';
import 'package:_summit_homes/pages/profile.dart';
import 'package:_summit_homes/pages/wallet.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentTabIndex = 0;

  late List<Widget> pages;
  late Widget currentPage;
  late Home homepage;
  late Profile profile;
  late Order order;
  late Wallet wallet;

  @override
  void initState() {
    homepage = const Home();
    order = const Order();
    profile = const Profile();
    wallet = const Wallet();
    pages = [homepage, order, wallet, profile];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 65,
        backgroundColor: Colors.white,
        color: Colors.black,
        animationDuration: const Duration(milliseconds: 400),
        onTap:(int index){
          setState(() {
            currentTabIndex=index;
          });
        },
        items: const [
        Icon(
          Icons.home,
          color: Colors.amber,
        ),
         Icon(
          Icons.shopping_bag,
          color: Colors.amber,
        ),
         Icon(
          Icons.account_balance_wallet_rounded,
          color: Colors.amber,
          
        ),
         Icon(
          Icons.person_2_rounded,
          color: Colors.amber,
        )
      ]),
      body:pages[currentTabIndex] ,
    );
  }
}
