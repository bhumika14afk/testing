import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tesco/screens/Vouchers_screen.dart';
import 'package:tesco/screens/home_screen.dart';
import 'package:tesco/screens/offers_screen.dart';
import 'package:tesco/screens/points_screen.dart';
import 'package:tesco/screens/rewards_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentIndex = 0;
  final screens = [
    HomeScreen(),
    PointsScreen(),
    OffersScreen(),
    Vouchers(),
    Rewards()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          selectedItemColor: Color(0xff007eb2),
          unselectedItemColor: Colors.grey.shade900,
          iconSize: 40,
          selectedFontSize: 10,
          unselectedFontSize: 10,
          showUnselectedLabels: true,
          onTap: (index) => setState(() => currentIndex = index),
          // type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.plus_rectangle_fill),
                label: "Points"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.ticket_fill),
                label: "Offers & Coupons"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.creditcard_fill), label: "Vouchers"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.gift_fill), label: "Rewards"),
          ]),
    );
  }
}
