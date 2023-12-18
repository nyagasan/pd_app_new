import 'package:flutter/material.dart';
import '../model/exchange_model.dart';

//確認ページ
class ConfirmModal extends StatelessWidget {
  final ExchangeData exchangeData;

  ConfirmModal({required this.exchangeData});
  

  @override
  Widget build(BuildContext context) {
    // 画面サイズを取得
    var screenSize = MediaQuery.of(context).size;

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        height: screenSize.height * 0.8,
        width: screenSize.width * 0.9,
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 32),
            FittedBox(
              child: Image.asset(
                exchangeData.image,
                height: 400,
                width: 400,
                fit: BoxFit.fitHeight,
              ),
            ),
            // 横の線
            Container(
              height: 1,
              width: 300,
              color: Colors.black,
            ),
            Padding(
                padding: const EdgeInsets.only(
              top: 20,
            )),
            Column(
              children: [
                Text(exchangeData.name, style: TextStyle(fontSize: 24)),
                Text('と交換します。', style: TextStyle(fontSize: 20)),
                Text('\nよろしいですか？', style: TextStyle(fontSize: 20))
              ],
            ),
            SizedBox(height: 30), // 適切な間隔を追加

            // はい・いいえボタン
            ElevatedButton(
              onPressed: () {},
              child: Text('はい',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  )),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                minimumSize: Size(300, 60), //ボタンの幅と高さ
                backgroundColor: const Color.fromARGB(255, 210, 15, 1),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('いいえ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  )),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                minimumSize: Size(300, 60), //ボタンの幅と高さ
                backgroundColor: Color.fromARGB(255, 182, 182, 182),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
