import 'package:flutter/material.dart';
import 'package:mobile_app/api_clients/test_api_client.dart';

class RestPageWidget extends StatefulWidget {
  final Color color;

  RestPageWidget(this.color);

  @override
  _RestPageWidgetState createState() => _RestPageWidgetState();
}

class _RestPageWidgetState extends State<RestPageWidget> {
  static const String TestURL = 'https://jsonplaceholder.typicode.com/users';
  final _uriStringController = TextEditingController(text: TestURL);
  final _apiClient = TestApiClient();

  String _currentData = "NULL";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: <Widget>[
          Row(crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
            Text("Adress", style: TextStyle(fontSize: 16)),
            SizedBox(width: 50),
            Expanded(
              child: TextField(
                  controller: _uriStringController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: widget.color)),
                      hintText: TestURL,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10))),
            ),
          ]),
          SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                  text: "POST",
                  color: widget.color,
                  onButtonPressed: () {
                    setState(() {
                      _currentData = 'NOT WORKED';
                    });
                  }),
              SizedBox(width: 25),
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
            ],
          ),
          SizedBox(height: 25),
          Expanded(
              child: SingleChildScrollView(
                  scrollDirection: Axis.vertical, child: Text(_currentData)))
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

class DataViewer extends StatefulWidget {
  @override
  _DataViewerState createState() => _DataViewerState();
}

class _DataViewerState extends State<DataViewer> {
  String _dataText = "Null";
  final TestApiClient apiClient = TestApiClient();

  void setData(String data) {
    setState(() {
      _dataText = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text('$_dataText');
  }
}
