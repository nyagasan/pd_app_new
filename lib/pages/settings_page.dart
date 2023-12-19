import 'package:flutter/material.dart';

// 設定ページ
class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 500,
            height: 200,
            color: Colors.blue,
            child: Center(child: Text('aaaaaa')),
          ),
          Padding(
              padding: const EdgeInsets.only(
            top: 20,
          )),
          Text('John Flower', style: TextStyle(fontSize: 30)),
          Padding(
              padding: const EdgeInsets.only(
            top: 20,
          )),
          Container(
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
            height: 350,
            width: 350,
            child: Center(child: Text('aaaaaa')),
          ),
        ],
      ),
    );
  }
}
