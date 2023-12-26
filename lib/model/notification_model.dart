class NotificationData {
  DateTime date;
  String storeName;
  String title;
  String content;

  NotificationData({
    required this.date,
    required this.storeName,
    required this.title,
    required this.content,
  });
}

List<NotificationData> notifications = [
  NotificationData(
    date: DateTime(2023, 10, 2),
    storeName: 'ガクショク LA TERRA',
    title: '特麺「富山ブラックラーメン」が登場！',
    content: '富山県の名物ラーメン「富山ブラックラーメン」が登場！圧倒的濃厚な醤油スープに、特製の麺が絡み合う！',
  ),
  NotificationData(
    date: DateTime(2023, 10, 2),
    storeName: 'プロジェクトデザイン実践',
    title: 'アプリが完成しました！！',
    content: 'Flutter x Supabaseで開発していた"ふぁんカードApp"が完成しました！',
  ),
];
