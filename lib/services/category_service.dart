import 'package:patra/end_points.dart';
import 'package:patra/services/http_service.dart';

class CategoryService {
  static Future<RequestResult> fetchCategories() async {
    return await http_get(EndPoints.category);
  }
}
