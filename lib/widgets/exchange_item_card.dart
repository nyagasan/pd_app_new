import 'package:flutter/material.dart';
import 'package:pd_app_new/widgets/confirm_modal.dart';
import '../model/exchange_model.dart';
import 'package:provider/provider.dart';

// 交換商品カード
class ExchangeItemCard extends StatelessWidget {
  final ExchangeData exchangeData;

  ExchangeItemCard({required this.exchangeData});

  @override
  Widget build(BuildContext context) {
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
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // 商品画像
          FittedBox(
            child: Image.asset(
              exchangeData.image,
              width: 200,
              height: 200,
              fit: BoxFit.fitHeight,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // 交換店舗名
                  Text(exchangeData.exchangeTo, style: TextStyle(fontSize: 18)),
                  SizedBox(height: 8),
                  Container(
                    //下線
                    height: 1,
                    width: 100,
                    color: Colors.black,
                  ),
                  Spacer(),
                  // 商品名
                  Text(
                    exchangeData.name,
                    style: TextStyle(fontSize: 20),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                  ),
                  Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      // 交換処理を実装、Modalを展開
                      showGeneralDialog(
                        context: context,
                        barrierColor: Colors.black.withOpacity(.3),
                        barrierDismissible: true,
                        barrierLabel: 'Close', // アクセシビリティ用のラベル
                        // transitionDuration: Duration(milliseconds: 200),
                        pageBuilder: (_, __, ___) {
                          return ConfirmModal();
                        },
                      );
                    },
                    child: Text('交換',
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
          ),
        ],
      ),
    );
  }
}
