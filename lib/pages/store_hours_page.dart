import 'package:flutter/material.dart';
import '../widgets/store_card.dart';

class StoreHoursPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color.fromARGB(255, 240, 240, 240),
      child: ListView(
        padding: EdgeInsets.all(20),
        children: [
          StoreCard(),
        ],
      ),
    );
  }
}
