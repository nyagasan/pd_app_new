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
          StoreCard(
              storeName: 'LA TERRA',
              storeLocation: '21号館1F ガクショク',
              storeURL: 'https://www.kit-group.jp/pages/77/',
              storeOpenTime: '10:00~15:00',
              storeOperatingNow: false),
          SizedBox(height: 20),
          StoreCard(
              storeName: 'ILSOLE',
              storeLocation: '21号館2F',
              storeURL: 'https://www.kit-group.jp/pages/161/',
              storeOpenTime: '10:00~15:00',
              storeOperatingNow: false),
          SizedBox(height: 20),
          StoreCard(
              storeName: 'Yショップ アクア店',
              storeLocation: '27号館2F',
              storeURL: 'https://www.kit-group.jp/pages/91/',
              storeOpenTime: '8:30~19:00',
              storeOperatingNow: true),
          SizedBox(height: 20),
          StoreCard(
              storeName: 'KITブックセンター',
              storeLocation: '21号館2F',
              storeURL: 'https://www.kit-group.jp/pages/74/',
              storeOpenTime: '8:30~17:00',
              storeOperatingNow: true),
          SizedBox(height: 20),
          StoreCard(
              storeName: 'ENERGY',
              storeLocation: 'やつかほキャンパス 62号館',
              storeURL: 'https://www.kit-group.jp/pages/114/',
              storeOpenTime: '11:00~15:00',
              storeOperatingNow: false),
        ],
      ),
    );
  }
}
