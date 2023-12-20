// お知らせページ
import 'package:flutter/material.dart';
import '../widgets/red_appbar.dart';
import '../model/notification_model.dart';
import '../widgets/notification_card.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RedAppBar('お知らせ'),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return NotificationCard(notification: notifications[index]);
        },
      ),
    );
  }
}
