import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'NavBar.dart';

class Vouchers extends StatefulWidget {
  const Vouchers({super.key});

  @override
  State<Vouchers> createState() => _VouchersState();
}

class _VouchersState extends State<Vouchers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Color(0xff00529e),
        centerTitle: true,
        title: Text("Vouchers"),
      ),
    );
  }
}
