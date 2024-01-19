import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_sneakers/components/bottom_nav_bar.dart';

import 'cart.page.dart';
import 'shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  bool _isDrawerOpened = false;

  void navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //pages to display
  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // set appbar color when drawer is opened
      onDrawerChanged: (isOpened) {
        setState(() {
          _isDrawerOpened = isOpened;
        });
      },
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomNavBar(index),
      ),
      //app bar with black system icons
      appBar: AppBar(
        systemOverlayStyle: _isDrawerOpened
            ? SystemUiOverlayStyle.light
            : SystemUiOverlayStyle.dark,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  //Logo
                  DrawerHeader(
                    child:
                        Image.asset("lib/images/logo.png", color: Colors.white),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Divider(
                      color: Colors.grey[800],
                    ),
                  ),
                  //Other pages
                  const Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: ListTile(
                      leading: Icon(Icons.home, color: Colors.white),
                      title:
                          Text("Home", style: TextStyle(color: Colors.white)),
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: ListTile(
                      leading: Icon(Icons.info, color: Colors.white),
                      title:
                          Text("About", style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 25.0, bottom: 25),
                child: ListTile(
                  leading: Icon(Icons.logout, color: Colors.white),
                  title: Text("Logout", style: TextStyle(color: Colors.white)),
                ),
              ),
            ]),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
