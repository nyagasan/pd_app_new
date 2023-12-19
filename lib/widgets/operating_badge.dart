import 'package:flutter/material.dart';

// 店舗の営業時間を表示するコンテナを実装
class OperatingBadge extends StatelessWidget {
  final bool isOperating;

  OperatingBadge({required this.isOperating});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 46,
      height: 46,
      decoration: BoxDecoration(
        color: isOperating ? Color(0x4CD32F2F) : Colors.black.withOpacity(0.12),
        shape: BoxShape.circle,
      ),
      padding: const EdgeInsets.all(9),
      child: Image.asset(
        isOperating
            ? 'assets/images/exc_item1.jpg'
            : 'assets/images/exc_item1.jpg',
        width: 28,
        height: 28,
      ),
    );
  }
}
