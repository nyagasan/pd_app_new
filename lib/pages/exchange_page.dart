import 'package:flutter/material.dart';
import 'package:pd_app_new/model/exchange_model.dart';
import '../widgets/exchange_item_card.dart';
import 'package:provider/provider.dart';
import '../model/user_model.dart';

// 交換ページ
class ExchangePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    final userPoints = user.point;

    return ListView.builder(
      itemCount: exchangeDataList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              SizedBox(height: 12),
              ExchangeItemCard(
                exchangeData: exchangeDataList[index],
                userPoints: userPoints,),
            ],
          ),
        );
      },
    );
  }
}
