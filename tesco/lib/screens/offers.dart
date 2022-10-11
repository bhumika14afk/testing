import 'package:flutter/material.dart';
import 'package:avatars/avatars.dart';

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
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextField(
                      decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 15.0),
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: const BorderSide(width: 0.8)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: BorderSide(
                                  width: 0.8,
                                  color: Theme.of(context).primaryColor)),
                          hintText: "Search",
                          prefixIcon: const Icon(
                            Icons.search,
                            size: 30,
                          ),
                          suffixIcon: IconButton(
                              icon: const Icon(Icons.clear), onPressed: () {})),
                    ),
                  ),
                  Card(
                      child: ListTile(
                          leading: Icon(
                            Icons.shopping_basket,
                            size: 40,
                            color: Color(0xff00529e),
                          ),
                          title: Text(
                            "Want even more offers?",
                            style: TextStyle(
                                color: Color(0xff00529e),
                                fontWeight: FontWeight.lerp(
                                    FontWeight.w600, FontWeight.w500, 1)),
                          ),
                          subtitle: Text(
                            "Check out the Tesco Groceries app",
                          ),
                          trailing: Icon(Icons.arrow_forward_ios_rounded,
                              color: Color(0xff00529e))))
                ],
              ),
              height: 180,
              color: Color(0xff00529e),
            ),
          ),
          Card(
              child: ListTile(
                  leading: Avatar(
                      shape: AvatarShape.rectangle(
                          60, 60, BorderRadius.all(Radius.circular(0.0))),
                      sources: [
                        NetworkSource(
                            'https://digitalcontent.api.tesco.com/v2/media/ghs/27f2ef46-bfa2-4297-8b86-4dfea1e6be52/snapshotimagehandler_2074799928.jpeg?h=540&w=540'),
                      ]),
                  title: Text("Tesco Baked Beans in Tomato Sauce 420G"),
                  subtitle: Text(
                    "Any 4 for f1.30 Clubcard Price - Tesco Bake... ",
                    style: TextStyle(color: Colors.red),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios_rounded,
                      color: Color(0xff00529e)))),
          Card(
              child: ListTile(
                  leading: Avatar(
                      shape: AvatarShape.rectangle(
                          60, 60, BorderRadius.all(Radius.circular(0.0))),
                      sources: [
                        NetworkSource(
                            'https://www.pikpng.com/pngl/b/400-4003360_red-bell-png.png'),
                      ]),
                  title: Text("Red Peppers Each Class 1"),
                  subtitle: Text(
                    "39p Clubcard Price ",
                    style: TextStyle(color: Colors.red),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios_rounded,
                      color: Color(0xff00529e)))),
          Card(
              child: ListTile(
                  leading: Avatar(
                      shape: AvatarShape.rectangle(
                          60, 60, BorderRadius.all(Radius.circular(0.0))),
                      sources: [
                        NetworkSource(
                            'https://media.naheed.pk/catalog/product/cache/49dcd5d85f0fa4d590e132d0368d8132/1/1/1180374-1.jpg'),
                      ]),
                  title: Text("Tesco Italian Chopped Tomatoes 400G Ce"),
                  subtitle: Text(
                    "Any 4 for €1.70 Clubcard Price - Tesco Peele...",
                    style: TextStyle(color: Colors.red),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios_rounded,
                      color: Color(0xff00529e)))),
          Card(
              child: ListTile(
                  leading: Avatar(
                      shape: AvatarShape.rectangle(
                          60, 60, BorderRadius.all(Radius.circular(0.0))),
                      sources: [
                        NetworkSource(
                            'https://digitalcontent.api.tesco.com/v2/media/ghs/6e4269cc-b28e-402f-90d9-8404307602c3/snapshotimagehandler_1249001735.jpeg?h=540&w=540'),
                      ]),
                  title: Text("Tesco Tuna Chunks In Spring Water 145G"),
                  subtitle: Text(
                    "Any 4 for €3 Clubcard Price - Selected Tesco...",
                    style: TextStyle(color: Colors.red),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios_rounded,
                      color: Color(0xff00529e)))),
          Card(
              child: ListTile(
                  leading: Avatar(
                      shape: AvatarShape.rectangle(
                          60, 60, BorderRadius.all(Radius.circular(0.0))),
                      sources: [
                        NetworkSource(
                            'https://mysupermarkets.uk/wp-content/uploads/2021/01/tripe-ready-twin-pack-avocados-2.jpeg'),
                      ]),
                  title: Text("T.Ripe & Ready Twin Pack Avocados"),
                  subtitle: Text(
                    "€1.00 Clubcard Price",
                    style: TextStyle(color: Colors.red),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios_rounded,
                      color: Color(0xff00529e)))),
          Card(
              child: ListTile(
                  leading: Avatar(
                      shape: AvatarShape.rectangle(
                          60, 60, BorderRadius.all(Radius.circular(0.0))),
                      sources: [
                        NetworkSource(
                            'https://digitalcontent.api.tesco.com/v2/media/ghs/3b0eaa57-7226-40ac-80f8-1192becd81bf/snapshotimagehandler_6803425.jpeg?h=540&w=540'),
                      ]),
                  title: Text("Jaffa Clementine Or Sweet Easy Peeler 600G"),
                  subtitle: Text(
                    "€1.50 Clubcard Price",
                    style: TextStyle(color: Colors.red),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios_rounded,
                      color: Color(0xff00529e)))),
        ],
      ),
    );
  }
}
