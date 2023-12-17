import 'package:flutter/material.dart';
import 'package:pd_app_new/pages/notification_page.dart';
import 'package:pd_app_new/pages/scaffold_exchange_page.dart';
import 'pages/login_page.dart';
import 'pages/home_page.dart';
import 'pages/StoreHoursPage.dart';
import 'pages/settings_page.dart';
import 'pages/exchange_page.dart';
import 'pages/confirm_page.dart';
import 'pages/splash.dart';

import 'widgets/fun_appbar.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ふぁんカードApp',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 60, 147, 169)),
      ),
      routes: {
        '/': (context) => Splash(),
        '/login': (context) => LoginPage(),
        '/home': (context) => MyHomePage(),
        '/exchange': (context) => ExchangePage(),
        '/scaffold_exchange': (context) => ScaffoldExchangePage(),
        '/storehours': (context) => StoreHoursPage(),
        '/settings': (context) => SettingsPage(),
        '/confirm': (context) => ConfirmPage(),
        '/notification': (context) => NotificationPage(),
      },
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
