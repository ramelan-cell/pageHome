import 'dart:convert';

import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:ordo/page/account.dart';
import 'package:ordo/page/book.dart';
import 'package:ordo/page/grafik.dart';
import 'package:ordo/page/home.dart';
import 'package:ordo/page/tab2.dart';

class MainMenu extends StatefulWidget {
  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: DefaultTextStyle(
          style:
              GoogleFonts.poppins().copyWith(color: Colors.black, fontSize: 13),
          child: TabBarView(
            children: <Widget>[
              Book(),
              Tab2(),
              MyHome(),
              Grafik(),
              Account(),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          child: TabBar(
            labelColor: Colors.grey[600],
            unselectedLabelColor: Colors.grey[350],
            indicatorColor: Colors.grey,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.book_online),
                child: new Text(
                  "",
                  style: TextStyle(fontSize: 12.0),
                ),
              ),
              Tab(
                icon: Icon(Icons.backpack),
                child: new Text(
                  "",
                  style: TextStyle(fontSize: 12.0),
                ),
              ),
              Tab(
                icon: Icon(Icons.home),
                child: new Text(
                  "",
                  style: TextStyle(fontSize: 12.0),
                ),
              ),
              Tab(
                icon: Icon(Icons.bar_chart_sharp),
                child: new Text(
                  "",
                  style: TextStyle(fontSize: 12.0),
                ),
              ),
              Tab(
                icon: Icon(Icons.account_box),
                child: new Text(
                  "",
                  style: TextStyle(fontSize: 12.0),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
