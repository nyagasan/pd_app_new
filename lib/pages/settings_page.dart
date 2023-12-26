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
            height: 250,
            color: Colors.blue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FittedBox(
                  child: Image.asset(
                    'assets/images/cloud_1.png',
                    width: 130,
                    height: 130,
                  ),
                ),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(
            top: 10,
          )),
          Text('クラウドくん', style: TextStyle(fontSize: 30)),
          Padding(
              padding: const EdgeInsets.only(
            top: 10,
          )),
          Container(
            width: 350,
            height: 50,
            color: const Color.fromARGB(255, 175, 175, 175),
            child: Center(
              child: Text(
                'アカウント設定',
                style: TextStyle(color: Colors.black, fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 255, 255),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  offset: Offset(5, 5),
                  blurRadius: 15,
                ),
              ],
            ),
            height: 350,
            width: 350,
            child: Center(
              child: Container(
                height: 293,
                width: 300,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 220, 220, 220),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Navigator.pushReplacement(
                        //   context,
                        //   ),
                        // );
                      },
                      child: Container(
                        // 1つ目のコンテナ
                        width: 294,
                        height: 55,
                        color: const Color.fromARGB(255, 255, 255, 255),
                        child: Center(
                          child: Text(
                            'プロフィール設定',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 152, 152, 152),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 3),
                    GestureDetector(
                      onTap: () {
                        //仮置きで確認ページに飛ぶよう設定してます。以降も同様。
                        // Navigator.pushReplacement(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => HomePage()),
                        // );
                      },
                      child: Container(
                        // 2つ目のコンテナ
                        width: 294,
                        height: 55,
                        color: const Color.fromARGB(255, 255, 255, 255),
                        child: Center(
                          child: Text(
                            '背景設定',
                            style: TextStyle(
                              fontSize: 20,
                              color: const Color.fromARGB(255, 152, 152, 152),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 3),
                    GestureDetector(
                      onTap: () {
                        // Navigator.pushReplacement(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => HomePage()),
                        // );
                      },
                      child: Container(
                        // 3つ目のコンテナ
                        width: 294,
                        height: 55,
                        color: Color.fromARGB(255, 255, 255, 255),
                        child: Center(
                          child: Text(
                            'パスワード設定',
                            style: TextStyle(
                              fontSize: 20,
                              color: const Color.fromARGB(255, 152, 152, 152),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 3),
                    GestureDetector(
                      onTap: () {
                        // Navigator.pushReplacement(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => HomePage()),
                        // );
                      },
                      child: Container(
                        // 4つ目のコンテナ
                        width: 294,
                        height: 55,
                        color: Color.fromARGB(255, 255, 255, 255),
                        child: Center(
                          child: Text(
                            '交換履歴',
                            style: TextStyle(
                              fontSize: 20,
                              color: const Color.fromARGB(255, 152, 152, 152),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 3),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/');
                      },
                      child: Container(
                        // 5つ目のコンテナ
                        width: 294,
                        height: 55,
                        color: Color.fromARGB(255, 255, 255, 255),
                        child: Center(
                          child: Text(
                            'ログアウト',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(Colors.red.value),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    //nつ目のコンテナ
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
