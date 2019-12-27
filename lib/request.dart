export 'package:appbasica/request.dart';

import 'package:http/http.dart' as http;

Future<http.Response> fetchPostApi() async {
  return await http.get('https://rocketseat-node.herokuapp.com/api/products');
}