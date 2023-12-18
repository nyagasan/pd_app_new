// こんな感じになったらいいなのイメージ
class User {
  late String id;
  late String name;
  late String email;
  late String password;
  late int point;
  late int rank;

  User({required this.id, this.point = 0});

  void addPoint() {
    point += 1;
  }
}

void addPointToUser(User user) {
  user.point += 1;
}