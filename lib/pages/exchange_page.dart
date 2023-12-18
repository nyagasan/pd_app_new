import 'package:flutter/material.dart';

// 交換ページ
class ExchangePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // 交換商品カード
        Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 239, 238, 238),
            borderRadius: BorderRadius.circular(12),
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
          height: 200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // 商品画像
              Image.asset(
                'assets/images/exc_item5.png',
                width: 200,
                height: 200,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // 交換店舗名
                      Text('Yショップ', style: TextStyle(fontSize: 18)),
                      Container(
                        //下線
                        height: 1,
                        width: 100,
                        color: Colors.black,
                      ),
                      Spacer(),
                      // 商品名
                      Text(
                        'ハーゲンダッツあふれるショコラ抹茶＆クッキー',
                        style: TextStyle(fontSize: 20),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                      ),
                      Spacer(),
                      ElevatedButton(
                        onPressed: () {},
                        child: Expanded(
                          child: Text('交換',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              )),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          minimumSize: Size(300, 45), //ボタンの幅と高さ
                          backgroundColor:
                              const Color.fromARGB(255, 210, 15, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 239, 238, 238),
            borderRadius: BorderRadius.circular(12),
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
          height: 200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // 商品画像
              Image.asset(
                'assets/images/exc_item5.png',
                width: 200,
                height: 200,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // 交換店舗名
                      Text('Yショップ', style: TextStyle(fontSize: 18)),
                      Container(
                        //下線
                        height: 1,
                        width: 100,
                        color: Colors.black,
                      ),
                      Spacer(),
                      // 商品名
                      Text(
                        'ハーゲンダッツあふれるショコラ抹茶＆クッキー',
                        style: TextStyle(fontSize: 20),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                      ),
                      Spacer(),
                      ElevatedButton(
                        onPressed: () {},
                        child: Expanded(
                          child: Text('交換',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              )),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          minimumSize: Size(300, 45), //ボタンの幅と高さ
                          backgroundColor:
                              const Color.fromARGB(255, 210, 15, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          //真ん中
          padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 239, 238, 238),
              borderRadius: BorderRadius.circular(12),
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
            height: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Yショップ', style: TextStyle(fontSize: 18)),
                      Container(
                        //下線
                        height: 1,
                        width: 100,
                        color: Colors.black,
                      ),
                      SizedBox(height: 5),
                      Text('ハーゲンダッツあふれるショコラ抹茶＆クッキー',
                          style: TextStyle(fontSize: 20)),
                      SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('交換',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            )),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          minimumSize: Size(160, 50), //ボタンの幅と高さ
                          backgroundColor:
                              const Color.fromARGB(255, 210, 15, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          //一番下
          padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 239, 238, 238),
              borderRadius: BorderRadius.circular(12),
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
            height: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('LA TERRA', style: TextStyle(fontSize: 18)),
                      Container(
                        //下線
                        height: 1,
                        width: 100,
                        color: Colors.black,
                      ),
                      SizedBox(height: 5),
                      Text('KITランチ', style: TextStyle(fontSize: 20)),
                      SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('交換',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            )),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          minimumSize: Size(160, 50), //ボタンの幅と高さ
                          backgroundColor:
                              const Color.fromARGB(255, 210, 15, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
