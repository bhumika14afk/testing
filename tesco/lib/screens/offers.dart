import 'package:flutter/material.dart';

class Offers extends StatefulWidget {
  const Offers({super.key});

  @override
  State<Offers> createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(0),
            child: Container(
              height: 200,
              color: Color(0xff00529e),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              height: 150,
              color: Colors.deepPurple[200],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              height: 150,
              color: Colors.deepPurple[200],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              height: 150,
              color: Colors.deepPurple[200],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              height: 150,
              color: Colors.deepPurple[200],
            ),
          ),
        ],
      ),
    );
  }
}
