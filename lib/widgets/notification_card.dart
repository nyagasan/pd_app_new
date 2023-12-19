import 'package:flutter/material.dart';
import 'package:pd_app_new/model/notification_model.dart';
import 'package:intl/intl.dart';


class NotificationCard extends StatelessWidget {
  final NotificationModel notification;

  NotificationCard({required this.notification});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
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
                      ),
                    ),
                  )
                ],
              ),
              Text(
                notification.title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 4),
              Text(
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                notification.content,
                style: TextStyle(
                  color: Color(0xFF444444),
                  fontSize: 16,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
