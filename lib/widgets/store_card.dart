import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class StoreCard extends StatelessWidget {
  // final StoreData storeData;
  final String storeName;
  final String storeLocation;
  final String storeOpenTime;
  final String storeURL;
  final bool storeOperatingNow;

  // StoreCard ({required this.storeData});
  StoreCard({
    required this.storeName,
    required this.storeLocation,
    required this.storeURL,
    required this.storeOpenTime,
    required this.storeOperatingNow,
  });

  Future<void> _launchUrl() async {
    if (!await launchUrl(Uri.parse(storeURL))) {
      throw Exception('Could not launch $Uri.parse(storeURL)');
    }
  }

  @override
  Widget build(BuildContext context) {
    // bool isOparationgNow = storeData.isOperatingNow();
    return GestureDetector(
      onTap: () {
        _launchUrl();
      },
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
        // 全体、Flex row
        child: Column(
          children: [
            // Active要素
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                FittedBox(
                  fit: BoxFit.cover,
                  child: Container(
                      width: 10,
                      height: 150,
                      color: (this.storeOperatingNow == true)
                          ? Color.fromARGB(255, 210, 15, 1)
                          : Color.fromARGB(255, 120, 120, 120)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14.0),
                  child: Column(
                    children: [
                      Icon(Icons.restaurant,
                          size: 50,
                          color: (this.storeOperatingNow == true)
                              ? Color.fromARGB(255, 210, 15, 1)
                              : Color.fromARGB(255, 120, 120, 120)),
                      SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: ShapeDecoration(
                          color: (this.storeOperatingNow == true)
                              ? Color.fromARGB(255, 210, 15, 1)
                              : Color.fromARGB(255, 120, 120, 120),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        child: Text(
                          (this.storeOperatingNow == true) ? '営業中' : '準備中',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Text(
                      this.storeLocation,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    // 店舗名
                    Text(
                      this.storeName,
                      style: TextStyle(
                        color: Color(0xFF131212),
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      '営業時間：' + this.storeOpenTime,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'タップしてHPにアクセス',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
