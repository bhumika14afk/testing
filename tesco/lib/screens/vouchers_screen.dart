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
      body: Column(
        children: [
          Card(
              child: ListTile(
                  title: Row(
                    children: [
                      Text("Total in vouchers",
                          style: TextStyle(
                            fontSize: 20,
                          )),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text(
                          "€8",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                  trailing: Icon(
                    Icons.info_outline,
                    color: Color(0xff00529e),
                    size: 30,
                  ))),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Card(
              color: Colors.grey[400],
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  'Spend your vouchers in-store online and with our reward partners',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ),
          Card(
              elevation: 3,
              child: ExpansionTile(
                  leading: Icon(
                    Icons.keyboard_arrow_down_sharp,
                    color: Color(0xff00529e),
                  ),
                  title: Text(
                    "€2.50",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  trailing: Text("Use by 30/11/2022"))),
          Card(
              elevation: 3,
              child: ExpansionTile(
                  leading: Icon(
                    Icons.keyboard_arrow_down_sharp,
                    color: Color(0xff00529e),
                  ),
                  title: Text(
                    "€3",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  trailing: Text("Use by 28/2/2023"))),
          Card(
              elevation: 3,
              child: ExpansionTile(
                  leading: Icon(
                    Icons.keyboard_arrow_down_sharp,
                    color: Color(0xff00529e),
                  ),
                  title: Text(
                    "€2.50",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  trailing: Text("Use by 31/08/2024"))),
          Card(
            elevation: 3,
            child: ExpansionTile(
                leading: Icon(
                  Icons.keyboard_arrow_down_sharp,
                  color: Color(0xff00529e),
                ),
                title: Text(
                  "€2.50",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                trailing: Text("Use by 30/11/2022")),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              '*View Voucher Terms & Conditions > ',
              style: TextStyle(
                  color: Color(0xff00529e),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
