import 'package:flutter/material.dart';
import 'package:tesco/screens/NavBar.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      body: ListView(
        children: [
          Padding(
              padding: const EdgeInsets.all(0),
              child: Container(
                color: Color(0xff00529e),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 200,
                        height: 200.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/qrcode.png'),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.rectangle,
                            color: Colors.white),
                      ),
                    ),
                    Container(
                      width: 150,
                      height: 200.0,
                      child: Column(
                        children: [
                          Text(
                            "Scan this at the till to collect points",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "It did not scan?",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.white,
                                  fontSize: 15),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              color: Colors.white,
              height: 160,
              child: Column(
                children: [
                  Text(
                    '393 points',
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                  LinearProgressBar(
                    maxSteps: 6,
                    progressType: LinearProgressBar
                        .progressTypeLinear, // Use Linear progress
                    currentStep: 5,
                    progressColor: Color(0xff038dc8),
                    backgroundColor: Colors.grey,
                  ),
                  Text("7 more points to your next voucher worth €4 "),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: 50.0, vertical: 10.0),
                        backgroundColor: Color(0xff00529e),
                        shape: StadiumBorder(),
                      ),
                      child: Text(
                        "Turn your points into vouchers",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                  Text(
                      "The last day to collect points for your next statement period is 20/10/22")
                ],
              ),
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
      appBar: AppBar(
        backgroundColor: Color(0xff00529e),
        centerTitle: true,
        title: Text("Clubcard"),
      ),
    );
  }
}
