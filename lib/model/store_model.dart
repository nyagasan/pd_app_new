import 'package:flutter/material.dart';

// 店舗の営業時間を表示
class StoreData {
  late String name;

  late Map<int, TimeOfDayRange> weeklyHours; // 曜日ごとの営業時間
  late String websiteUrl;

  StoreData({
    required this.name,
    required this.weeklyHours,
    required this.websiteUrl,
  });

  // 今営業しているかどうかを判定するメソッド
  bool isOperatingNow() {
    DateTime now = DateTime.now();
    TimeOfDay nowTime = TimeOfDay(hour: now.hour, minute: now.minute);
    TimeOfDayRange? todayHours = weeklyHours[now.weekday];

    if (todayHours == null) return false; // 今日の営業時間が設定されていない

    return nowTime.hour >= todayHours.start.hour &&
        nowTime.hour <= todayHours.end.hour &&
        (nowTime.hour != todayHours.end.hour ||
            nowTime.minute < todayHours.end.minute);
  }
}

class TimeOfDayRange {
  TimeOfDay start;
  TimeOfDay end;

  TimeOfDayRange({required this.start, required this.end});
}

// 使用例
var store = StoreData(
  name: 'Example Store',
  weeklyHours: {
    DateTime.monday: TimeOfDayRange(
        start: TimeOfDay(hour: 9, minute: 0),
        end: TimeOfDay(hour: 18, minute: 0)),
    // 他の曜日も同様に設定
  },
  websiteUrl: 'https://example.com',
);

List<StoreData> storeDataList = [
  StoreData(
    name: 'Yショップ アクア店',
    weeklyHours: {
      DateTime.monday: TimeOfDayRange(
          start: TimeOfDay(hour: 9, minute: 0),
          end: TimeOfDay(hour: 18, minute: 0)),
      DateTime.tuesday: TimeOfDayRange(
          start: TimeOfDay(hour: 9, minute: 0),
          end: TimeOfDay(hour: 18, minute: 0)),
      DateTime.wednesday: TimeOfDayRange(
          start: TimeOfDay(hour: 9, minute: 0),
          end: TimeOfDay(hour: 18, minute: 0)),
      DateTime.thursday: TimeOfDayRange(
          start: TimeOfDay(hour: 9, minute: 0),
          end: TimeOfDay(hour: 18, minute: 0)),
      DateTime.friday: TimeOfDayRange(
          start: TimeOfDay(hour: 9, minute: 0),
          end: TimeOfDay(hour: 18, minute: 0)),
      DateTime.saturday: TimeOfDayRange(
          start: TimeOfDay(hour: 9, minute: 0),
          end: TimeOfDay(hour: 18, minute: 0)),
      DateTime.sunday: TimeOfDayRange(
          start: TimeOfDay(hour: 9, minute: 0),
          end: TimeOfDay(hour: 18, minute: 0)),
    },
    websiteUrl: 'https://example.com',
  ),
  StoreData(
    name: 'ガクショク ラテラ',
    weeklyHours: {
      DateTime.monday: TimeOfDayRange(
          start: TimeOfDay(hour: 10, minute: 0),
          end: TimeOfDay(hour: 20, minute: 0)),
      DateTime.tuesday: TimeOfDayRange(
          start: TimeOfDay(hour: 10, minute: 0),
          end: TimeOfDay(hour: 20, minute: 0)),
      DateTime.wednesday: TimeOfDayRange(
          start: TimeOfDay(hour: 10, minute: 0),
          end: TimeOfDay(hour: 20, minute: 0)),
      DateTime.thursday: TimeOfDayRange(
          start: TimeOfDay(hour: 10, minute: 0),
          end: TimeOfDay(hour: 20, minute: 0)),
      DateTime.friday:TimeOfDayRange(
          start: TimeOfDay(hour: 10, minute: 0),
          end: TimeOfDay(hour: 20, minute: 0)),
      DateTime.saturday: TimeOfDayRange(
          start: TimeOfDay(hour: 10, minute: 0),
          end: TimeOfDay(hour: 20, minute: 0)), 
      DateTime.sunday: TimeOfDayRange(
          start: TimeOfDay(hour: 10, minute: 0),
          end: TimeOfDay(hour: 20, minute: 0)),
    },
    websiteUrl: 'https://example.com',
  ),
  StoreData(
    name: 'KITブックセンター',
    weeklyHours: {
      DateTime.monday: TimeOfDayRange(
          start: TimeOfDay(hour: 10, minute: 0),
          end: TimeOfDay(hour: 20, minute: 0)),
      DateTime.tuesday: TimeOfDayRange(
          start: TimeOfDay(hour: 10, minute: 0),
          end: TimeOfDay(hour: 20, minute: 0)),
      DateTime.wednesday: TimeOfDayRange(
          start: TimeOfDay(hour: 10, minute: 0),
          end: TimeOfDay(hour: 20, minute: 0)),
      DateTime.thursday: TimeOfDayRange(
          start: TimeOfDay(hour: 10, minute: 0),
          end: TimeOfDay(hour: 20, minute: 0)),
      DateTime.friday:TimeOfDayRange(
          start: TimeOfDay(hour: 10, minute: 0),
          end: TimeOfDay(hour: 20, minute: 0)),
      DateTime.saturday: TimeOfDayRange(
          start: TimeOfDay(hour: 10, minute: 0),
          end: TimeOfDay(hour: 20, minute: 0)), 
      DateTime.sunday: TimeOfDayRange(
          start: TimeOfDay(hour: 10, minute: 0),
          end: TimeOfDay(hour: 20, minute: 0)),
    },
    websiteUrl: 'https://example.com',
  ),

];
