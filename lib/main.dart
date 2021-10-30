import 'package:flutter/material.dart';
import 'package:mobile_app/screens/place/place_screen.dart';

import 'screens/main/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.purple),
      routes: {
        '/main_screen': (context) => MainScreenWidget(),
        '/main_screen/place_detail': (context) {
          final arguments = ModalRoute.of(context)?.settings.arguments;
          if (arguments is int) {
            return PlacePageWidget(placeId: arguments);
          } else {
            return PlacePageWidget(placeId: 0);
          }
        },
      },
      initialRoute: '/main_screen',
    );
  }
}
