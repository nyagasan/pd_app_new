import './user_model.dart';

class ExchangeData {
  // 商品名
  late String name;
  // 商品の説明
  late String description;
  // 商品の画像
  late String image;
  // 商品のポイント
  late int point;
  // 商品の交換先
  late String exchangeTo;

// 交換できるかどうかを判定するメソッド
  bool canExchange(User user) {
    return user.point >= this.point;
  }

// 交換するメソッド
  void exchange(User user) {
    if (!canExchange(user)) {
      throw Exception('ポイントが足りません');
    }
    user.point -= this.point;
  }
}

// 交換商品のリストを定義
List<ExchangeData> exchangeDataList = [
  ExchangeData()
    ..name = 'アイスクリーム'
    ..description = 'アイスクリーム'
    ..image = 'assets/images/1.png'
    ..point = 10
    ..exchangeTo = ' Yショップ アクア店',
  ExchangeData()
    ..name = 'カップ麺'
    ..description = '商品の説明2'
    ..image = 'assets/images/2.png'
    ..point = 15
    ..exchangeTo = 'Yショップ アクア店',
  ExchangeData()
    ..name = 'パン'
    ..description = '商品の説明3'
    ..image = 'assets/images/3.png'
    ..point = 15
    ..exchangeTo = 'Yショップ アクア店',
  ExchangeData()
    ..name = 'お菓子'
    ..description = '商品の説明4'
    ..image = 'assets/images/4.png'
    ..point = 20
    ..exchangeTo = 'Yショップ アクア店',
  ExchangeData()
    ..name = 'KITランチ'
    ..description = '商品の説明4'
    ..image = 'assets/images/4.png'
    ..point = 20
    ..exchangeTo = 'ガクショク ラテラ',
];
