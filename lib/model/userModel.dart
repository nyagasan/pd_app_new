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
