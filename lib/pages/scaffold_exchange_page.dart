import 'package:flutter/material.dart';
import 'package:pd_app_new/pages/exchange_page.dart';
import '../widgets/red_appbar.dart';
import 'confirm_page.dart';

bool canExchange = false;

// Scaffold交換ページ
class ScaffoldExchangePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RedAppBar('交換'),
      body: Center(
        child: ExchangePage(),
      ),
    );
  }
}
