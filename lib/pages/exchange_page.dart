import 'package:flutter/material.dart';
import 'package:pd_app_new/model/exchange_model.dart';
import '../widgets/exchange_item_card.dart';

// 交換ページ
class ExchangePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: exchangeDataList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.all(8),
          child: ExchangeItemCard(exchangeData: exchangeDataList[index]),
        );
      },
    );
  }
}
