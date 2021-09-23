import 'package:flutter/material.dart';
import 'package:mobile_app/pages/counter_page.dart';
import 'package:mobile_app/pages/places_page_widgets/places_page.dart';
import 'package:mobile_app/pages/rest_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Mobile App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentPage = 0;
  final List<Widget> _pages = [
    RestPageWidget(Colors.pinkAccent),
    CounterPageWidget(Colors.tealAccent),
    PlacesPageWidget(Colors.blue)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: _pages[_currentPage],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentPage,
            onTap: onTabTapped,
            items: [
              BottomNavigationBarItem(
                  icon: new Icon(Icons.query_stats), label: "REST"),
              BottomNavigationBarItem(
                  icon: new Icon(Icons.policy), label: "Counter"),
              BottomNavigationBarItem(
                  icon: new Icon(Icons.list), label: "Places")
            ]));
  }

  void onTabTapped(int index) {
    setState(() {
      _currentPage = index;
    });
  }
}
