// こんな感じになったらいいなのイメージ
class User {
  String id;
  String name;
  String email;
  String password;
  int point;
  int rank;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    this.point = 0,
    required this.rank,
  });

  void addPoint() {
    point += 1;
  }
}

  User takeshi = User(
  id: '1',
  name: 'たけし',
  email: 'takeshi@example.com',
  password: 'password',
  point: 0,
  rank: 1,
);

// デバッグ用
void main() {

print('たけしのポイント ${takeshi.point}');
takeshi.addPoint();
print('たけしのポイント ${takeshi.point}');

}
