import 'package:flutter/material.dart';
import 'package:mobile_app/api_clients/test_api_client.dart';

class RestPageWidget extends StatefulWidget {
  final Color color;

  RestPageWidget(this.color);

  @override
  _RestPageWidgetState createState() => _RestPageWidgetState();
}

class _RestPageWidgetState extends State<RestPageWidget> {
  static const String TestURL = 'https://jsonplaceholder.typicode.com/posts';
  static const String ExampleJSON =
      '{"title": "foo", "body": "bar", "userId": 1}';
  final _uriStringController = TextEditingController(text: TestURL);
  final _postDataStringController = TextEditingController(text: ExampleJSON);

  final _apiClient = TestApiClient();

  String _currentData = "NULL";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: <Widget>[
          TextField(
              controller: _uriStringController,
              maxLines: 3,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: widget.color)),
                  hintText: TestURL,
                  labelText: "REST full adress",
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 10))),
          SizedBox(height: 20),
          CustomButton(
            text: "GET",
            color: widget.color,
            onButtonPressed: () async {
              final String res =
                  await _apiClient.simpleGET(_uriStringController.text);
              setState(() {
                _currentData = res;
              });
            },
          ),
          SizedBox(height: 10),
          TextField(
              controller: _postDataStringController,
              maxLines: 5,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: widget.color)),
                  hintText: ExampleJSON,
                  labelText: "POST data",
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 10))),
          SizedBox(height: 10),
          CustomButton(
              text: "POST",
              color: widget.color,
              onButtonPressed: () async {
                final String res = await _apiClient.simplePOST(
                    _uriStringController.text, _postDataStringController.text);
                setState(() {
                  _currentData = res;
                });
              }),
          SizedBox(height: 10),
          Expanded(
              child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: DecoratedBox(
                position: DecorationPosition.background,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: widget.color,
                    )),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    _currentData,
                    textAlign: TextAlign.justify,
                  ),
                )),
          ))
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onButtonPressed;

  CustomButton(
      {required this.text, required this.color, VoidCallback? onButtonPressed})
      : onButtonPressed = onButtonPressed ??
            (() {
              print('Button $text pressed');
            });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onButtonPressed,
        child: Text(text),
        style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
            backgroundColor: MaterialStateProperty.all(color),
            foregroundColor: MaterialStateProperty.all(Colors.white),
            textStyle: MaterialStateProperty.all(
              TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            )));
  }
}
