import 'package:flutter/material.dart';

//ログインページ内容
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(20),
        child: AppBar(
          backgroundColor: Color.fromARGB(255, 210, 15, 1),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            //ロゴ
            Container(
              width: (MediaQuery.of(context).size.width) * 0.7,
              child: Image.asset('assets/images/logo.png'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  // メールフォーム
                  TextField(
                    decoration: InputDecoration(labelText: 'Email address'),
                  ),
                  // パスワードフォーム
                  SizedBox(height: 16),
                  TextField(
                    decoration: InputDecoration(labelText: 'Password'),
                    obscureText: true,
                  ),
                  SizedBox(height: 32),
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (value) {},
                      ),
                      Text('利用規約に同意する'),
                    ],
                  ),
                ],
              ),
            ),

            // ログインボタン
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/home');
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                minimumSize: Size(320, 50), //ボタンの幅と高さ
                backgroundColor: const Color.fromARGB(255, 210, 15, 1),
              ),
              child: Text('サインイン',
                  style: TextStyle(
                    color: Colors.white,
                  )),
            ),
            Spacer(),
            Container(
              width: (MediaQuery.of(context).size.width),
              child: Image.asset('assets/images/cloud_footer.png'),
            ),
          ],
        ),
      ),
    );
  }
}
