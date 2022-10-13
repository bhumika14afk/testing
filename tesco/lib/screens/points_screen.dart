import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'NavBar.dart';

class PointsScreen extends StatefulWidget {
  const PointsScreen({super.key});

  @override
  State<PointsScreen> createState() => _PointsScreenState();
}

class _PointsScreenState extends State<PointsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.white,
              height: 180,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        '393 points',
                        style: TextStyle(fontSize: 30, color: Colors.black),
                      ),
                    ],
                  ),
                  LinearProgressBar(
                    maxSteps: 6,
                    progressType: LinearProgressBar
                        .progressTypeLinear, // Use Linear progress
                    currentStep: 5,
                    minHeight: 12,
                    progressColor: Color(0xff038dc8),
                    backgroundColor: Colors.grey,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            "7 more points to your next voucher worth €4 "),
                      ),
                    ],
                  ),
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
              height: 380,
              color: Colors.grey[300],
              child: ListView(
                padding: const EdgeInsets.all(1),
                children: <Widget>[
                  Card(
                      child: ListTile(
                    title: Text("Your recent activity"),
                  )),
                  Card(
                      child: ListTile(
                          title: Text("Tesco Harrow Express"),
                          subtitle: Text("26/09/22"),
                          trailing: Text(
                            "8 pts",
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 15,
                              fontWeight: FontWeight.w900,
                            ),
                          ))),
                  Card(
                      child: ListTile(
                          title: Text("Tesco Rayners Ln Harrow Exp"),
                          subtitle: Text(
                            "25/09/22",
                          ),
                          trailing: Text(
                            "4 pts",
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 15,
                              fontWeight: FontWeight.w900,
                            ),
                          ))),
                  Card(
                      child: ListTile(
                          title: Text("Tesco Harrow Express"),
                          subtitle: Text("25/09/22"),
                          trailing: Text(
                            "26 pts",
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 15,
                              fontWeight: FontWeight.w900,
                            ),
                          ))),
                  Card(
                      child: ListTile(
                          title: Text("View more"),
                          trailing: Icon(Icons.arrow_forward_ios_sharp)))
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 100,
              child: Card(
                child: ListTile(
                  leading: Icon(
                    CupertinoIcons.plus_rectangle,
                    color: Color(0xff007eb2),
                    size: 35,
                  ),
                  title: Text(
                    'Discover ways to collect',
                    style: TextStyle(
                        color: Color(0xff007eb2),
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text(
                    'Collect points',
                    style: TextStyle(fontSize: 16),
                  ),
                  trailing: Icon(
                    CupertinoIcons.chevron_right_circle,
                    color: Color(0xff007eb2),
                    size: 35,
                  ),
                  onTap: () {},
                ),
              ),
            ),
          ),
        ],
      ),
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Color(0xff00529e),
        centerTitle: true,
        title: Text("Points"),
      ),
    );
  }
}
