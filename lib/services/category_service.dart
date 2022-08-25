import 'package:http/http.dart' as http;
import 'package:patra/services/http_service.dart';

class CategoryService {
  static var headers = {
    'accept': 'application/json',
    'Authorization': 'Bearer 4xmd9tm4mc6taagm28wuz1ty7jp321yt',
    'Cookie': 'PHPSESSID=61qhnfjai4ngn0rrp51dm4k18j'
  };
  static Future<RequestResult> fetchCategories() async {
    return await http_get("patra/pub/rest/all/V1/categories", headers);
  }
}
