import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Stack(
            children: <Widget>[
              TextField(
                style: TextStyle(color: Colors.pink),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(2, 5, 2, 5),
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  hintText: "Search",
                  hintStyle: TextStyle(color: Colors.pink),
                  prefixIcon: Icon(Icons.search, color: Colors.pink),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.pink),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: null,
              icon: Icon(Icons.notifications_outlined, color: Colors.pink),
            ),
            IconButton(
              onPressed: null,
              icon: Icon(Icons.favorite_border, color: Colors.pink),
            ),
          ],
        ),
        body: ListView(
          children: <Widget>[
            Container(
              height: 50,
              width: 500,
              decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  shape: BoxShape.rectangle,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(3, 6),
                        blurRadius: 10)
                  ],
                  borderRadius: BorderRadius.circular(15)),
              margin: EdgeInsets.only(left: 15, right: 15, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: <Widget>[
                      Icon(
                        Icons.sort,
                        color: Colors.pink,
                      ),
                      Text('Sort By Categories'),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.sort_by_alpha, color: Colors.pink),
                      Text('Shop By Brand')
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              height: 200,
              width: 500,
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(3, 6),
                        blurRadius: 10)
                  ],
                  borderRadius: BorderRadius.circular(15)),
              margin: EdgeInsets.only(left: 15, right: 15, top: 15),
              child: new Image(
                  image:
                      AssetImage("assets/images/promo_mobile_banner_121.jpg"),
                  fit: BoxFit.fill),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(top: 15),
                    child: OutlinedButton.icon(
                      onPressed: () {
                        // Respond to button press
                      },
                      icon: Icon(Icons.shop, size: 18),
                      label: Text("Promotions"),
                    )),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  child: OutlinedButton.icon(
                    onPressed: () {
                      // Respond to button press
                    },
                    icon: Icon(Icons.new_releases, size: 18),
                    label: Text("New Arrival"),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  child: OutlinedButton.icon(
                    onPressed: () {
                      // Respond to button press
                    },
                    icon: Icon(Icons.thumb_up, size: 18),
                    label: Text("Best Seller"),
                  ),
                ),
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xFFFFFFFF),
          selectedItemColor: Colors.pink,
          unselectedItemColor: Colors.black.withOpacity(.60),
          selectedFontSize: 14,
          unselectedFontSize: 14,
          onTap: (value) {
            // Respond to item press.
          },
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Shop',
              icon: Icon(Icons.shopping_basket),
            ),
            BottomNavigationBarItem(
              label: 'Newsfeed',
              icon: Icon(Icons.new_releases),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(Icons.person_rounded),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.qr_code_scanner),
            backgroundColor: const Color(0xFFE91E63),
            onPressed: () {}),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}