import 'package:flutter/material.dart';

class AdressWidget extends StatelessWidget {
  final String adress;

  const AdressWidget({Key? key, required this.adress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(adress);
  }
}
