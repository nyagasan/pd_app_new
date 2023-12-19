class NotificationModel {
  DateTime date;
  String storeName;
  String title;
  String content;

  NotificationModel({
    required this.date,
    required this.storeName,
    required this.title,
    required this.content,
  });
}

List<NotificationModel> notifications = [
  NotificationModel(
    date: DateTime(2023, 10, 2),
    storeName: 'スターバックス 金沢工大店',
    title: '新作フラペチーノ登場',
    content: 'サザエ味の新しいフラペチーノが登場しました！',
  ),
  NotificationModel(
    date: DateTime(2023, 10, 2),
    storeName: 'スターバックス 金沢工大店',
    title: '新作フラペチーノ登場',
    content: 'サザエ味の新しいフラペチーノが登場しました！',
  ),
];
