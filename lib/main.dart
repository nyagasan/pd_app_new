import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'pages/home_page.dart';
import 'pages/StoreHoursPage.dart';

import 'widgets/fun_appbar.dart';

void main() {
  runApp(MyApp());
}

// 設定ページ
class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar2(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 500,
              height: 200,
              color: Colors.blue,
              child: Center(child: Text('aaaaaa')),
            ),
            Padding(
                padding: const EdgeInsets.only(
              top: 20,
            )),
            Text('John Flower', style: TextStyle(fontSize: 30)),
            Padding(
                padding: const EdgeInsets.only(
              top: 20,
            )),
            Container(
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
              height: 350,
              width: 350,
              child: Center(child: Text('aaaaaa')),
            ),
          ],
        ),
      ),
    );
  }
}

// 通知ボタンがないAppBar, ホームに戻る
class CustomAppBar2 extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(56.0);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[300],
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
          )
        ],
      ),
      child: AppBar(
        title: Text('交換'),
        backgroundColor: Color.fromARGB(255, 210, 15, 1),
        //あってるかわからない↓
        actions: [],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(
                context, MaterialPageRoute(builder: (context) => MyHomePage()));
          },
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'aaaaaa',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 60, 147, 169)),
      ),
      home: LoginPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  //アプリのホームページ表示
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// ページの状態管理
class _MyHomePageState extends State<MyHomePage> {
  var selectedIndex = 0;
  late ExchangePage exchangePage;

  @override
  void initState() {
    super.initState();
    exchangePage = ExchangePage(); //ExchangePageのインスタンスを作成
  }

  @override
  Widget build(BuildContext context) {
    Widget page;
    // タブバーの遷移先
    switch (selectedIndex) {
      case 0:
        page = HomePage();
        break;
      case 1:
        page = ExchangePage();
        break;
      case 2:
        page = StoreHoursPage();
        break;
      case 3:
        page = SettingsPage();
        break;
      default:
        throw UnimplementedError('no widget for $selectedIndex');
    }

    var mainArea = Padding(
      padding:
          const EdgeInsets.only(top: 0, left: 0, right: 0), // 適切なpaddingを設定

      child: ColoredBox(
        color: Color.fromARGB(141, 237, 236, 236),
        child: AnimatedSwitcher(
          duration: Duration(milliseconds: 200),
          child: page,
          switchInCurve: Curves.easeIn, // アニメーションのカーブを追加
          switchOutCurve: Curves.easeOut, // アニメーションのカーブを追加
        ),
      ),
    );

    return Scaffold(
      appBar: FunAppBar(), //AppBar
      // ラベルの指定
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 450) {
            return Column(
              children: [
                Expanded(child: mainArea),
                SafeArea(
                  bottom: false, //底部の余白をなくす
                  child: BottomNavigationBar(
                    items: const [
                      BottomNavigationBarItem(
                        icon: Icon(Icons.home),
                        label: 'ホーム',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.currency_exchange),
                        label: '交換',
                        backgroundColor: Color.fromARGB(255, 250, 246, 246),
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.access_time),
                        label: '営業時間',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.settings),
                        label: '設定',
                      ),
                    ],
                    currentIndex: selectedIndex,
                    onTap: (value) {
                      setState(() {
                        selectedIndex = value;
                      });
                    },

                    selectedItemColor: Colors.black, // 選択されたアイコンの色
                    unselectedItemColor:
                        Colors.black.withOpacity(0.5), // 選択されていないアイコンの色
                    iconSize: 40.0, //アイコンサイズの調整
                  ),
                ),
              ],
            );
          } else {
            return Row(
              children: [
                SafeArea(
                  bottom: false, //底部の余白をなくす
                  child: NavigationRail(
                    extended: constraints.maxWidth >= 600,
                    destinations: [
                      NavigationRailDestination(
                        icon: Icon(Icons.home),
                        label: Text('Home'),
                      ),
                      NavigationRailDestination(
                        icon: Icon(Icons.currency_exchange),
                        label: Text('exchange'),
                      ),
                      NavigationRailDestination(
                        icon: Icon(Icons.access_time),
                        label: Text('Time'),
                      ),
                      NavigationRailDestination(
                        icon: Icon(Icons.settings),
                        label: Text('Settings'),
                      ),
                    ],
                    selectedIndex: selectedIndex,
                    onDestinationSelected: (value) {
                      setState(() {
                        selectedIndex = value;
                      });
                    },
                  ),
                ),
                Expanded(child: mainArea),
              ],
            );
          }
        },
      ),
    );
  }
}



// 追加: 新しいページ：交換ページ
class ExchangePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          //一番上
          padding: const EdgeInsets.only(top: 35, right: 20, left: 20),
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
            height: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.black,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Yショップ', style: TextStyle(fontSize: 18)),
                      Container(
                        //下線
                        height: 1,
                        width: 100,
                        color: Colors.black,
                      ),
                      SizedBox(height: 5),
                      Text('ハーゲンダッツあふれるショコラ抹茶＆クッキー',
                          style: TextStyle(fontSize: 20)),
                      SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('交換',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            )),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          minimumSize: Size(160, 50), //ボタンの幅と高さ
                          backgroundColor:
                              const Color.fromARGB(255, 210, 15, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          //真ん中
          padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 239, 238, 238),
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
            height: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Yショップ', style: TextStyle(fontSize: 18)),
                      Container(
                        //下線
                        height: 1,
                        width: 100,
                        color: Colors.black,
                      ),
                      SizedBox(height: 5),
                      Text('ハーゲンダッツあふれるショコラ抹茶＆クッキー',
                          style: TextStyle(fontSize: 20)),
                      SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('交換',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            )),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          minimumSize: Size(160, 50), //ボタンの幅と高さ
                          backgroundColor:
                              const Color.fromARGB(255, 210, 15, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          //一番下
          padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 239, 238, 238),
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
            height: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('LA TERRA', style: TextStyle(fontSize: 18)),
                      Container(
                        //下線
                        height: 1,
                        width: 100,
                        color: Colors.black,
                      ),
                      SizedBox(height: 5),
                      Text('KITランチ', style: TextStyle(fontSize: 20)),
                      SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('交換',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            )),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          minimumSize: Size(160, 50), //ボタンの幅と高さ
                          backgroundColor:
                              const Color.fromARGB(255, 210, 15, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

// 追加: 新しいページ：設定ページ
class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(),
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
            height: 80,
            width: 300,
            child: Center(child: Text('お知らせ', style: TextStyle(fontSize: 25))),
          ),
        ),
        Padding(
          //一つ目
          padding: const EdgeInsets.only(top: 40, right: 20, left: 20),
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
            height: 100,
            child: Center(child: Text('aaaaaa')),
          ),
        ),
        Padding(
          //二つ目
          padding: const EdgeInsets.only(top: 40, right: 20, left: 20),
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
            height: 100,
            child: Center(child: Text('aaaaaa')),
          ),
        ),
        Padding(
          //三つ目
          padding: const EdgeInsets.only(top: 40, right: 20, left: 20),
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
            height: 100,
            child: Center(child: Text('aaaaaa')),
          ),
        ),
        Padding(
          //四つ目
          padding: const EdgeInsets.only(top: 40, right: 20, left: 20),
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
            height: 100,
            child: Center(child: Text('aaaaaa')),
          ),
        ),
        Padding(
          //五つ目
          padding: const EdgeInsets.only(top: 40, right: 20, left: 20),
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
            height: 100,
            child: Center(child: Text('aaaaaa')),
          ),
        ),
      ],
    );
  }
}

// 交換ページ（ホームから飛べるページ）
class ExchangePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar2(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              //一番上
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
                height: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      color: Colors.black,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Yショップ', style: TextStyle(fontSize: 18)),
                          Container(
                            //下線
                            height: 1,
                            width: 100,
                            color: Colors.black,
                          ),
                          SizedBox(height: 5),
                          Text('ハーゲンダッツあふれるショコラ抹茶＆クッキー',
                              style: TextStyle(fontSize: 20)),
                          SizedBox(height: 16),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ReallyPage()),
                              );
                            },
                            child: Text('交換',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                )),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              minimumSize: Size(160, 50), //ボタンの幅と高さ
                              backgroundColor:
                                  const Color.fromARGB(255, 210, 15, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              //真ん中
              padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 239, 238, 238),
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
                height: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Yショップ', style: TextStyle(fontSize: 18)),
                          Container(
                            //下線
                            height: 1,
                            width: 100,
                            color: Colors.black,
                          ),
                          SizedBox(height: 5),
                          Text('ハーゲンダッツあふれるショコラ抹茶＆クッキー',
                              style: TextStyle(fontSize: 20)),
                          SizedBox(height: 16),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('交換',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                )),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              minimumSize: Size(160, 50), //ボタンの幅と高さ
                              backgroundColor:
                                  const Color.fromARGB(255, 210, 15, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              //一番下
              padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 239, 238, 238),
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
                height: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('LA TERRA', style: TextStyle(fontSize: 18)),
                          Container(
                            //下線
                            height: 1,
                            width: 100,
                            color: Colors.black,
                          ),
                          SizedBox(height: 5),
                          Text('KITランチ', style: TextStyle(fontSize: 20)),
                          SizedBox(height: 16),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('交換',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                )),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              minimumSize: Size(160, 50), //ボタンの幅と高さ
                              backgroundColor:
                                  const Color.fromARGB(255, 210, 15, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
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

//確認ページ
class ReallyPage extends StatelessWidget {
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
