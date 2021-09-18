import 'dart:convert';
import 'dart:io';

class TestApiClient {
  final client = HttpClient();

  Future<String> simpleGET(String url) async {
    final uri = Uri.parse(url);
    final request = await client.getUrl(uri);

    final resJson = _doQuery(request);

    return resJson;
  }

  Future<String> simplePOST(String url, String body) async {
    final uri = Uri.parse(url);
    final request = await client.postUrl(uri);
    request.headers.set('Content-type', 'application/json; charset=UTF-8');
    request.write(body);

    final resJson = _doQuery(request);

    return resJson;
  }

  Future<String> _doQuery(HttpClientRequest request) async {
    final response = await request.close();
    if (response.statusCode >= 300) {
      return 'BAD Query\nStatus code: ${response.statusCode.toString()}\nURL: ${request.uri.toString()}';
    }
    final rawStr = await response.transform(utf8.decoder).toList();
    final resJson = rawStr.join();

    return resJson;
  }
}
