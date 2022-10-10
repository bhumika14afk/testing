import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'NavBar.dart';

class OffersScreen extends StatefulWidget {
  const OffersScreen({super.key});

  @override
  State<OffersScreen> createState() => _OffersScreenState();
}

class _OffersScreenState extends State<OffersScreen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          backgroundColor: Color(0xff00529e),
          centerTitle: true,
          title: Text("Offers & Coupons"),
          bottom: TabBar(indicatorColor: Colors.white, tabs: [
            Tab(text: "Offers"),
            Tab(text: "Coupons"),
          ]),
        ),
      ));
}
