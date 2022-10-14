import 'package:flutter/material.dart';
import 'package:tesco/screens/home_screen.dart';
import 'package:tesco/screens/reward_details.dart';
import 'NavBar.dart';

class Rewards extends StatefulWidget {
  const Rewards({super.key});

  @override
  State<Rewards> createState() => _RewardsState();
}

class CardItem {
  final String urlImage;
  final String title;
  final String subtitle;

  const CardItem({
    required this.urlImage,
    required this.title,
    required this.subtitle,
  });
}

class _RewardsState extends State<Rewards> {
  List<CardItem> items1 = [
    CardItem(
        urlImage:
            "https://www.greatbritishpubcard.co.uk/portals/0/logos/round/hungry_horse.png",
        title: "€0.50 in vouchers",
        subtitle: '€1.50 to use'),
    CardItem(
        urlImage:
            "https://tasteleamington.com/identity-cms/wp-content/uploads/2016/10/pizza-express-logo-jpg.jpg",
        title: "€0.50 in vouchers",
        subtitle: '€1.50 to use'),
    CardItem(
        urlImage:
            "https://www.soda.com/wp-content/uploads/2019/12/prime-video.jpg",
        title: "€0.50 in vouchers",
        subtitle: '€1.50 to use'),
    CardItem(
        urlImage:
            "https://redwellandco.co.uk/wp-content/uploads/2017/11/starbucks_logos-9-1.jpg",
        title: "€0.50 in vouchers",
        subtitle: '€1.50 to use'),
    CardItem(
        urlImage:
            "https://logos-download.com/wp-content/uploads/2016/02/Volkswagen_Logo_1945-1536x1536.png",
        title: "€0.50 in vouchers",
        subtitle: '€1.50 to use'),
    CardItem(
        urlImage:
            "https://logos-download.com/wp-content/uploads/2016/02/NBC_logo_3.png",
        title: "€0.50 in vouchers",
        subtitle: '€1.50 to use'),
  ];
  List<CardItem> items2 = [
    CardItem(
        urlImage:
            "https://mdcthereporter.com/wp-content/uploads/2019/09/Disney-Logo.jpeg",
        title: "€0.50 in vouchers",
        subtitle: '€1.50 to use'),
    CardItem(
        urlImage:
            "https://www.mark-fletcher.org.uk/sites/www.mark-fletcher.org.uk/files/inline-images/english-heritage.jpg",
        title: "€0.50 in vouchers",
        subtitle: '€1.50 to use'),
    CardItem(
        urlImage:
            "https://www.pngitem.com/pimgs/m/3-38170_phonepe-logo-png-phone-pe-transparent-png.png",
        title: "€0.50 in vouchers",
        subtitle: '€1.50 to use'),
    CardItem(
        urlImage:
            "https://logos-download.com/wp-content/uploads/2021/02/The_Book_People_Logo.png",
        title: "€0.50 in vouchers",
        subtitle: '€1.50 to use'),
    CardItem(
        urlImage:
            "https://logos-download.com/wp-content/uploads/2021/02/The_Fresh_Market_Logo.png",
        title: "€0.50 in vouchers",
        subtitle: '€1.50 to use'),
    CardItem(
        urlImage:
            "https://logos-download.com/wp-content/uploads/2020/07/Double_Coffee_Logo.png",
        title: "€0.50 in vouchers",
        subtitle: '€1.50 to use'),
  ];
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Eating Out",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  child: Text(
                    "See all >",
                    style: TextStyle(
                      color: Color(0xff00529e),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {},
                )
              ],
            ),
          ),
          Container(
            height: 300,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(16),
              itemBuilder: (context, index) => buildCard(item: items1[index]),
              separatorBuilder: (context, _) => SizedBox(width: 12),
              itemCount: 6,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Fun",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                GestureDetector(
                  child: Text(
                    "See all >",
                    style: TextStyle(
                      color: Color(0xff00529e),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {},
                )
              ],
            ),
          ),
          Container(
            height: 256,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(16),
                itemBuilder: (context, index) => buildCard(item: items2[index]),
                separatorBuilder: (context, _) => SizedBox(width: 12),
                itemCount: 6),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Fun",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                GestureDetector(
                  child: Text(
                    "See all >",
                    style: TextStyle(
                      color: Color(0xff00529e),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {},
                )
              ],
            ),
          ),
          Container(
            height: 256,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(16),
                itemBuilder: (context, index) => buildCard(item: items2[index]),
                separatorBuilder: (context, _) => SizedBox(width: 12),
                itemCount: 6),
          ),
        ],
      ),
    );
  }
}

Widget buildCard({
  required CardItem item,
}) =>
    Container(
      width: 150,
      child: Column(children: [
        Expanded(
          child: AspectRatio(
            aspectRatio: 4 / 5,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Material(
                child: Ink.image(
                  image: NetworkImage(item.urlImage),
                  fit: BoxFit.scaleDown,
                  child: InkWell(onTap: () {}),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 4),
        Divider(),
        Text(
          item.title,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
        ),
        Text(
          item.subtitle,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Divider()
      ]),
    );
