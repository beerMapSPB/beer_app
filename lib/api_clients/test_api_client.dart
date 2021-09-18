import 'dart:convert';
import 'dart:io';

class TestApiClient {
  final client = HttpClient();
  final _encoder = JsonEncoder.withIndent('    ');

  Future<String> simpleGET(String url) async {
    final uri = Uri.parse(url);
    final request = await client.getUrl(uri);
    final response = await request.close();
    final rawStr = await response.transform(utf8.decoder).toList();
    final resStr = rawStr.join();
    final resJson =
        _encoder.convert(resStr).replaceAll('\\n', '\n').replaceAll('\\"', '"');

    return resJson.toString();
  }
}
