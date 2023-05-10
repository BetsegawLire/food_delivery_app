import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:matcher/matcher.dart';
import '../widgets/drawer_listtile.dart';
import '../pages/login.dart';

// GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

class DrawerPage extends StatelessWidget {
  static const id = 'drawer_page';

  bool _isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/delivery.png'),
            fit: BoxFit.fitWidth,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            DrawerListTile(
              text: "Order History",
              onTap: null,
            ),
            DrawerListTile(
              text: 'Enter Promo Code',
              onTap: null,
            ),
            DrawerListTile(
              text: 'Settings',
              onTap: null,
            ),
            DrawerListTile(
              text: 'FAQS',
              onTap: null,
            ),
            DrawerListTile(
              text: 'Support',
              onTap: null,
            ),
            DrawerListTile(
              text: 'Log Out',
              onTap: () {
                // Your code here
                Navigator.pushNamed(context, LoginPage.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
