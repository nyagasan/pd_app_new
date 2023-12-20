import 'package:flutter/material.dart';
import 'package:pd_app_new/model/notification_model.dart';
import 'package:intl/intl.dart';
import '../widgets/red_appbar.dart';

class NotificationContentPage extends StatelessWidget {
  final NotificationData notification;

  NotificationContentPage({required this.notification});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RedAppBar(notification.title),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      DateFormat('yyyy MM/dd').format(notification.date),
                      style: TextStyle(
                        color: Color(0xFF444444),
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(width: 10),
                    // 店舗名
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: ShapeDecoration(
                        color: Color(0xFFD32F2F),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      child: Text(
                        notification.storeName,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  notification.title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  notification.content,
                  style: TextStyle(
                    color: Color(0xFF444444),
                    fontSize: 18,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
