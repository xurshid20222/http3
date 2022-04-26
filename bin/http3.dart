import 'package:http/http.dart';
import 'package:http3/model/photo_class.dart';
import 'package:http3/servise/phpto_servise.dart';


void main() async {

  //  String body = await NetworkServise.GET(NetworkServise.apiPhotos, NetworkServise.headers);
  // List todos = NetworkServise.ListparseTodosList(body);
  // print(todos);
  //

  Photos photos = Photos(333, 111, 'nima gap', 'http/pdp.uz', 'http/tube');
  // String response = await NetworkServise.POST(NetworkServise.apiPhotos, NetworkServise.headers, photos.toJson());
  //  print(response);

  // String response = await NetworkServise.PUT(NetworkServise.apiPhotos + photos.id.toString(), NetworkServise.headers, photos.toJson());
  //  print(response.toString());

  //
  // String response = await NetworkServise.PUTCH(NetworkServise.apiPhotos + photos.id.toString(), NetworkServise.headers, {'title' : 'uerfhcvfhkvfv'});
  // print(response);

  String response = await NetworkServise.DELETE(NetworkServise.apiPhoto + photos.id.toString(), NetworkServise.headers);

  print("delete $response");



}
