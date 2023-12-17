import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'pages/home_page.dart';
import 'pages/StoreHoursPage.dart';
import 'pages/settings_page.dart';
import 'pages/exchange_page.dart';

import 'widgets/fun_appbar.dart';
import 'widgets/red_appbar.dart';

void main() {
  runApp(MyApp());
}


// 通知ボタンがないAppBar, ホームに戻る

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
  @override
  // ここまさかのSPAでした。なんでやねん。
  // ToDo: 気が向いたらExchangePageを入れ子にしたSccafoldを作る
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



// Scaffold交換ページ
class ExchangePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RedAppBar('交換'),
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
                                    builder: (context) => ConfirmPage()),
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

