// お知らせページ
import 'package:flutter/material.dart';
import '../widgets/red_appbar.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RedAppBar('お知らせ'),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(),
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
              height: 80,
              width: 300,
              child:
                  Center(child: Text('お知らせ', style: TextStyle(fontSize: 25))),
            ),
          ),
          Padding(
            //一つ目
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
              height: 100,
              child: Center(child: Text('aaaaaa')),
            ),
          ),
          Padding(
            //二つ目
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
              height: 100,
              child: Center(child: Text('aaaaaa')),
            ),
          ),
          Padding(
            //三つ目
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
              height: 100,
              child: Center(child: Text('aaaaaa')),
            ),
          ),
          Padding(
            //四つ目
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
              height: 100,
              child: Center(child: Text('aaaaaa')),
            ),
          ),
          Padding(
            //五つ目
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
              height: 100,
              child: Center(child: Text('aaaaaa')),
            ),
          ),
        ],
      ),
    );
  }
}
