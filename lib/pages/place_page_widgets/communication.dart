import 'package:flutter/material.dart';

class CommunicationWidget extends StatelessWidget {
  final String? phone;
  static const String emptyNumber = 'Нет телефона';

  const CommunicationWidget({Key? key, required this.phone}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(phone ?? emptyNumber);
  }
}
