import 'package:flutter/material.dart';
import 'package:tesco/screens/NavBar.dart';

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
      appBar: AppBar(
        backgroundColor: Color(0xff00529e),
        centerTitle: true,
        title: Text("Clubcard"),
      ),
    );
  }
}
