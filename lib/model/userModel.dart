// 最小構成で、Userクラスの定義と、Userクラスにポイントを追加する関数を定義
class User {
  String id;
  int points;

  User({required this.id, this.points = 0});

  void addPoint() {
    points += 1;
  }
}

void addPointToUser(User user) {
  user.addPoint();
}
