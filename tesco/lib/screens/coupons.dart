import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Coupons extends StatefulWidget {
  const Coupons({super.key});

  @override
  State<Coupons> createState() => _CouponsState();
}

class _CouponsState extends State<Coupons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00529e),
      body: ListView(
        children: [
          Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                  color: Colors.white,
                  height: 300,
                  child: Column(
                    children: [
                      Icon(
                        Icons.mail_lock_outlined,
                        size: 80,
                        color: Color(0xff00529e),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text(
                          "You're not currently opted in for marketing communications",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text(
                            "By opting in we can conact you by email, phone or post with coupons and relevant news."),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                horizontal: 50.0, vertical: 10.0),
                            backgroundColor: Color(0xff00529e),
                            shape: StadiumBorder(),
                          ),
                          child: Text(
                            "View maketing preferences",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                    ],
                  )))
        ],
      ),
    );
  }
}
