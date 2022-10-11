import 'package:flutter/material.dart';
import 'NavBar.dart';

class Rewards extends StatefulWidget {
  const Rewards({super.key});

  @override
  State<Rewards> createState() => _RewardsState();
}

class _RewardsState extends State<Rewards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Color(0xff00529e),
        centerTitle: true,
        title: Text("Rewards"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Eating Out",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                Container(
                  child: Column(
                    children: [Text("hello")],
                  ),
                  height: 150,
                  width: 150,
                ),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(8),
              child: Text("Fun",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
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
