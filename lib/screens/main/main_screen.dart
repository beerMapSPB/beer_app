import 'package:flutter/material.dart';
import 'package:mobile_app/screens/place_list/place_list_page.dart';

import '../beer_list/beer_list_screen.dart';
import '../rest/rest_page.dart';

class MainScreenWidget extends StatefulWidget {
  MainScreenWidget({Key? key}) : super(key: key);

  @override
  _MainScreenWidgetState createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  int _currentTab = 1;

  void _onSelectedTab(int index) {
    if (_currentTab != index) {
      setState(() {
        _currentTab = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar Main Screen Page'),
      ),
      body: IndexedStack(
        index: _currentTab,
        children: [
          BeersPageWidget(Colors.brown),
          PlacesPageWidget(Colors.blue),
          RestPageWidget(Colors.pinkAccent),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentTab,
        items: [
          BottomNavigationBarItem(
              icon: new Icon(Icons.sports_bar), label: "Beers"),
          BottomNavigationBarItem(icon: new Icon(Icons.list), label: "Places"),
          BottomNavigationBarItem(
              icon: new Icon(Icons.query_stats), label: "REST"),
        ],
        onTap: _onSelectedTab,
      ),
    );
  }
}
