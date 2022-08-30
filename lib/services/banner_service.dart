import 'package:patra/end_points.dart';
import 'package:patra/services/http_service.dart';

class BannerService {
  static Future<RequestResult> fetchBanners() async {
    return await http_get(EndPoints.banner);
  }
}
