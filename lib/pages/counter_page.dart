import 'package:flutter/material.dart';

class CounterPageWidget extends StatefulWidget {
  final Color color;

  CounterPageWidget(this.color);

  @override
  _CounterPageWidgetState createState() => _CounterPageWidgetState();
}

class _CounterPageWidgetState extends State<CounterPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.color,
    );
  }
}
