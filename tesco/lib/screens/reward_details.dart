import 'package:flutter/material.dart';
import 'package:tesco/screens/rewards_screen.dart';

class RewardDetails extends StatelessWidget {
  final CardItem item;

  const RewardDetails({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(item.title),
        ),
        body: Column(
          children: [
            AspectRatio(
              aspectRatio: 4 / 3,
              child: Image.network(
                item.urlImage,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              item.title,
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            )
          ],
        ),
      );
}
