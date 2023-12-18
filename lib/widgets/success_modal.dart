import 'package:flutter/material.dart';

// 交換商品カード
class SuccessModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 画面サイズを取得
    var screenSize = MediaQuery.of(context).size;

    return Container(
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
      height: screenSize.height * 0.6,
      width: screenSize.width * 0.7,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Icon(Icons.done, size: 70, color: Colors.green),
                SizedBox(height: 20),
                Text('交換が処理が\n完了しました', style: TextStyle(fontSize: 20)),
                SizedBox(height: 40),
                Text('この画面をスタッフに見せてください',
                    style: TextStyle(fontSize: 20, color: Colors.black)),
                SizedBox(height: 30),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/home');
              },
              child: Text('ホームに戻る',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  )),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                minimumSize: Size(300, 45), //ボタンの幅と高さ
                backgroundColor: const Color.fromARGB(255, 210, 15, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
