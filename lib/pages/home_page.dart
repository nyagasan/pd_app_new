import 'scaffold_exchange_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 400,
                height: 390,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(143, 11, 145, 255),
                ),
              ),
              Container(
                width: 350,
                height: 320,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(99, 253, 253, 253),
                ),
                child: Center(
                  child: Container(
                    width: 350,
                    height: 320,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'point',
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 150),
                        Text(
                          'Rank 1',
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 50),

          //上の線
          Container(
            height: 1,
            width: 350,
            color: Colors.black,
          ),
          Padding(
              padding: const EdgeInsets.only(
            top: 20,
          )),
          Text('ご利用可能ポイント', style: Theme.of(context).textTheme.headline4),
          SizedBox(height: 20),

          //下の線
          Container(
            height: 1,
            width: 350,
            color: Colors.black,
          ),

          SizedBox(height: 50),

          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ScaffoldExchangePage()));
            },
            child: Text('交換する',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                )),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              minimumSize: Size(320, 60), //ボタンの幅と高さ
              backgroundColor: const Color.fromARGB(255, 210, 15, 1),
            ),
          ),
        ],
      ),
    );
  }
}
