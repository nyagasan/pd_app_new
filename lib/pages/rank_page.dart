import 'package:flutter/material.dart';
import 'package:pd_app_new/widgets/red_appbar.dart';

//下記を追加
class MyClipper extends CustomClipper<Path> {
  //台形内容
  @override
  getClip(Size size) {
    var path = Path();
    path.moveTo(size.width / 7, 0);
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width * 6 / 7, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    // clipperが変わらない場合はfalse、変わる場合はtrue
    return false;
  }
}

class MyClipper2 extends CustomClipper<Path> {
  //三角形内容
  @override
  getClip(Size size) {
    var path = Path();
    path.moveTo(size.width / 2, 0);
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    // clipperが変わらない場合はfalse、変わる場合はtrue
    return false;
  }
}

//LankViewPage
class RankViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RedAppBar("ランク表示"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              //ランク1に戻るボタン
              onPressed: () {},
              child: Text(
                'Rank 1',
                style: TextStyle(fontSize: 40, color: Colors.blue),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0, right: 20, left: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 239, 238, 238),
                  borderRadius: BorderRadius.circular(12),
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
                height: 650,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
//ここ

                    SizedBox(height: 5, width: 50),
                    Flexible(
                      flex: 6,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 5),
                          ClipPath(
                            //一番上
                            clipper: MyClipper2(),
                            child: Container(
                              color: Color.fromARGB(255, 138, 0, 122),
                              height: 75,
                              width: 37,
                            ),
                          ),
                          SizedBox(height: 5),
                          ClipPath(
                            //上から二
                            clipper: MyClipper(),
                            child: Container(
                              height: 55,
                              width: 57,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color.fromARGB(255, 31, 171, 213),
                                    Color.fromARGB(255, 202, 245, 255),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          ClipPath(
                            //上から三
                            clipper: MyClipper(),
                            child: Container(
                              height: 70,
                              width: 82,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color.fromARGB(255, 225, 0, 0),
                                    Color.fromARGB(255, 255, 163, 163),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          ClipPath(
                            //上から四
                            clipper: MyClipper(),
                            child: Container(
                              height: 80,
                              width: 120,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color.fromARGB(255, 255, 232, 28),
                                    Color.fromARGB(255, 253, 255, 149),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          ClipPath(
                            //上から五(一番下)
                            clipper: MyClipper(),
                            child: Container(
                              height: 100,
                              width: 300,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color.fromARGB(255, 163, 163, 163),
                                    const Color.fromARGB(255, 197, 197, 197),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                        ],
                      ),
                    ),
                    SizedBox(height: 5, width: 40),
                    Flexible(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            //一番上
                            color: Color.fromARGB(255, 138, 0, 122),
                            width: 10,
                            height: 50,
                          ),
                          SizedBox(height: 20),
                          Container(
                            //上から二番目
                            color: Color.fromARGB(255, 31, 171, 213),
                            width: 10,
                            height: 50,
                          ),
                          SizedBox(height: 20),
                          Container(
                            //上から三番目
                            color: const Color.fromARGB(255, 250, 48, 48),
                            width: 10,
                            height: 50,
                          ),
                          SizedBox(height: 20),
                          Container(
                            //上から四番目
                            color: Color.fromARGB(255, 255, 236, 70),
                            width: 10,
                            height: 50,
                          ),
                          SizedBox(height: 20),
                          Container(
                            //上から五番目
                            color: const Color.fromARGB(255, 163, 163, 163),
                            width: 10,
                            height: 50,
                          ),
                        ],
                      ),
                    ),

                    Flexible(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Rank5',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(height: 41),
                          Text(
                            'Rank4',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(height: 41),
                          Text(
                            'Rank3',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(height: 41),
                          Text(
                            'Rank2',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(height: 41),
                          Text(
                            'Rank1',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
