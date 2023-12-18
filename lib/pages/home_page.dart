import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/user_model.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Providerを使用してユーザーデータにアクセス
    final user = Provider.of<User>(context);
    
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // 円形ポイント表示
          Spacer(),
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
                        // ToDo：ここにポイント数を表示する
                        // 仮で5を表示
                        Text(
                          '5',
                          style: TextStyle(
                            fontSize: 120,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
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
          Spacer(),
          // ご利用可能ポイント
          //上の線
          Container(
            height: 1,
            width: 350,
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child:
                Text('ご利用可能ポイント', style: Theme.of(context).textTheme.headline4),
          ),
          //下の線
          Container(
            height: 1,
            width: 350,
            color: Colors.black,
          ),
          Spacer(),
          // 交換ボタン
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/scaffold_exchange');
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
          Spacer(),
          ElevatedButton(
            onPressed: () {},
            child: Text('ポイント付与',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                )),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              minimumSize: Size(320, 60), //ボタンの幅と高さ
              backgroundColor: Color.fromARGB(255, 78, 9, 4),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
