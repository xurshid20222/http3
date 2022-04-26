import 'dart:convert';


import 'package:http/http.dart';
import 'package:http3/model/photo_class.dart';

class NetworkServise {
  // URL

  static const String baseUrl = 'jsonplaceholder.typicode.com';

  // HEADERS

  static Map<String, String> headers = {
    'Content-type': 'application/json; charset=UTF-8'
  };

  // APIS

  static const String apiPhotos = '/photos';
  static const String apiPhoto = '/photos/';

  // METHODS
  static Future<String> GET(String api, Map<String, String> headers) async {
    Uri uri = Uri.https(baseUrl, api);
    Response response = await get(uri, headers: headers);
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    } else {
      throw Exception('Error');
    }
  }

  //POST

  static Future<String> POST(String api, Map<String, String> headers,
      Map<String, dynamic> body) async {
    Uri uri = Uri.https(baseUrl, api);
    Response response =
    await post(uri, headers: headers, body: jsonEncode(body));
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    } else {
      throw Exception('Error');
    }
  }

  static Future<String> PUTCH(String api, Map<String, String> headers,
      Map<String, dynamic> body) async {
    Uri uri = Uri.https(baseUrl, api);
    Response response =
    await patch(uri, headers: headers, body: jsonEncode(body));
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    } else {
      throw Exception('Error');
    }
  }

  static Future<String> PUT(String api, Map<String, String> headers,
      Map<String, dynamic> body) async {
    Uri uri = Uri.https(baseUrl, api);
    Response response =
    await put(uri, headers: headers, body: jsonEncode(body));
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    } else {
      throw Exception('Error');
    }
  }

  static Future<String> DELETE(String api, Map<String, String> headers) async {
    Uri uri = Uri.https(baseUrl, api);
    Response response =
    await delete(uri, headers: headers);
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    } else {
      throw Exception('Error');
    }
  }

  // PARSING
  static ListparseTodosList(String body) {
    List json = jsonDecode(body);
    List photos = json.map((map) => Photos.fromJson(map)).toList();
    return photos;
  }

  static Photos parsePhoto(String body) {
    Map<String, dynamic> json = jsonDecode(body);
    Photos photos = Photos.fromJson(json);
    return photos;
  }
}
