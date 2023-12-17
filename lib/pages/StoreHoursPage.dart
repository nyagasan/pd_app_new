import '../main.dart';
import 'package:flutter/material.dart';

class StoreHoursPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
            padding: const EdgeInsets.only(
          top: 20,
        )),
        Text('対応店舗営業時間',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
            )),
        Padding(
            padding: const EdgeInsets.only(
          top: 10,
        )),
        Row(
          //下線
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 1,
              width: 300,
              color: Colors.black,
            ),
          ],
        ),
        Padding(
          //一番上
          padding: const EdgeInsets.only(top: 40, right: 20, left: 20),
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 255, 255),
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(-5, -5),
                  blurRadius: 15,
                ),
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  offset: Offset(5, 5),
                  blurRadius: 15,
                ),
              ],
            ),
            height: 170,
            child: Center(child: Text('aaaaaa')),
          ),
        ),
        Padding(
          //真ん中
          padding: const EdgeInsets.only(top: 40, right: 20, left: 20),
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 255, 255),
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(-5, -5),
                  blurRadius: 15,
                ),
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  offset: Offset(5, 5),
                  blurRadius: 15,
                ),
              ],
            ),
            height: 170,
            child: Center(child: Text('aaaaaa')),
          ),
        ),
        Padding(
          //一番下
          padding: const EdgeInsets.only(top: 40, right: 20, left: 20),
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 255, 255),
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(-5, -5),
                  blurRadius: 15,
                ),
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  offset: Offset(5, 5),
                  blurRadius: 15,
                ),
              ],
            ),
            height: 170,
            child: Center(child: Text('aaaaaa')),
          ),
        ),
      ],
    );
  }
}
