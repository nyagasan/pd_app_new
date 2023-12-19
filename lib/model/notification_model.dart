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
    storeName: 'スターバックス 金沢工大店',
    title: '新作フラペチーノ登場',
    content: 'サザエ味の新しいフラペチーノが登場しました！',
  ),
  NotificationData(
    date: DateTime(2023, 10, 2),
    storeName: 'プロジェクトデザイン実践',
    title: 'アプリが完成しました！！',
    content: 'Flutter x Supabaseで開発していた"ふぁんカードApp"が完成しました！',
  ),
];
