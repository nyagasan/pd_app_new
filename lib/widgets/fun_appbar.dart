import 'package:flutter/material.dart';

class FunAppBar extends StatelessWidget implements PreferredSizeWidget {
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
        title: Image.asset(
          'assets/images/appbar_logo.png',
          height: 30,
        ),
        backgroundColor: Color.fromARGB(255, 210, 15, 1),
        //あってるかわからない↓
        actions: [
          IconButton(
            icon: Icon(Icons.notification_add),
            onPressed: () {
              Navigator.pushNamed(context, '/notification');
            },
            color: Colors.white,
            iconSize: 35,
          ),
        ],
        automaticallyImplyLeading: false,
      ),
    );
  }
}
