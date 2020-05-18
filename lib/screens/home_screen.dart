import 'package:flutter/material.dart';
import 'package:news/shared_ui/navigation_darwer.dart';
import 'package:news/screens/home_taps/popular.dart';
import 'package:news/screens/home_taps/vafourite.dart';
import 'package:news/screens/home_taps/whats_new.dart';

class homescreen extends StatefulWidget {
  @override
  _homescreenState createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(initialIndex: 0,length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EXPLORE"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ],
        bottom: TabBar(
          indicatorColor: Colors.white,

          tabs: [
            Tab(
              text: "WHATS NEW",
            ),
            Tab(
              text: "popular ",
            ),
            Tab(
              text: "vavorite ",
            ),
          ],
          controller: _tabController,
        ),
      ),
      drawer: NavigationDrawer(),
      body: Center(
        child: TabBarView(children:[
         whatesNew(),
          popular(),
          vafourite(),

        ]
          ,controller: _tabController,),
      ),
    );
  }
}
