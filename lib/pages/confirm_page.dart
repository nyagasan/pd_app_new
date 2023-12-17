import 'package:flutter/material.dart';
import '../main.dart';
//確認ページ
class ConfirmPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => MyHomePage()));
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 32),
              Container(
                width: 400, // 適切な幅を指定
                height: 350, // 適切な高さを指定
                color: Colors.green, // 適切な色を指定
                child: Center(
                  child: Text('画像'),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(
                top: 20,
              )),
              Container(
                height: 1,
                width: 300,
                color: Colors.black,
              ),
              Padding(
                  padding: const EdgeInsets.only(
                top: 20,
              )),
              Center(
                child: Column(
                  children: [
                    Text('上記の商品と交換します。', style: TextStyle(fontSize: 25)),
                    Text('\nよろしいですか？', style: TextStyle(fontSize: 25))
                  ],
                ),
              ),
              SizedBox(height: 30), // 適切な間隔を追加
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(),
                  minimumSize: Size(320, 60),
                  backgroundColor: const Color.fromARGB(255, 210, 15, 1),
                ),
                child: Text('はい',
                    style: TextStyle(color: Colors.white, fontSize: 30)),
              ),
              Padding(
                  padding: const EdgeInsets.only(
                top: 20,
              )),

              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(),
                  minimumSize: Size(320, 60),
                  backgroundColor: Color.fromARGB(255, 185, 184, 184),
                ),
                child: Text('いいえ',
                    style: TextStyle(color: Colors.white, fontSize: 25)),
              ),
              Padding(
                  padding: const EdgeInsets.only(
                top: 70,
              )),
            ],
          ),
        ),
      ),
    );
  }
}
