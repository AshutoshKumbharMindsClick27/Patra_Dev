import 'package:flutter/material.dart';
import 'package:patra/screens/category_details.dart';

class Routes {
  static Map<String, Widget Function(BuildContext)> routes = {
    '/detail_category': (context) => const CategoryDetails(),
  };
}
