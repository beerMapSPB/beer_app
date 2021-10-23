import 'package:flutter/material.dart';
import 'package:mobile_app/pages/places_page_widgets/places_page.dart';

import 'beers_page_widgets.dart/beers_page.dart';
import 'rest_page.dart';

class MainScreenWidget extends StatefulWidget {
  MainScreenWidget({Key? key}) : super(key: key);

  @override
  _MainScreenWidgetState createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  int _currentTab = 0;

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
          PlacesPageWidget(Colors.blue),
          // PlacePageWidget(placeId: 0),
          BeersPageWidget(Colors.brown),
          RestPageWidget(Colors.pinkAccent),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentTab,
        items: [
          BottomNavigationBarItem(icon: new Icon(Icons.list), label: "Places"),
          // BottomNavigationBarItem(
          //     icon: new Icon(Icons.aod_outlined), label: "Place"),
          BottomNavigationBarItem(
              icon: new Icon(Icons.sports_bar), label: "Beers"),
          BottomNavigationBarItem(
              icon: new Icon(Icons.query_stats), label: "REST"),
        ],
        onTap: _onSelectedTab,
      ),
    );
  }
}
