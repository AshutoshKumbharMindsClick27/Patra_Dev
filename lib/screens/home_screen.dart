import 'package:flutter/material.dart';
import 'package:patra/widgets/category_slider.dart';
import 'package:patra/widgets/password_form_field.dart';
import 'package:patra/widgets/phone_number_field.dart';

import '../models/Category.dart';
import '../services/category_service.dart';
import '../widgets/banner_carausel.dart';
import '../widgets/text_form_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    handleFetchCategories();
    super.initState();
  }

  var categories = [];
  handleFetchCategories() async {
    var data = await CategoryService.fetchCategories();
    var defaultCategory = data.data['children_data'];
    for (var element in defaultCategory) {
      categories.add(
        Category(
            id: element['id'],
            title: element['name'],
            imgUrl:
                "https://images-eu.ssl-images-amazon.com/images/G/31/img19/2020/PC/Mobile._SY232_CB431401553_.jpg",
            childrenData: element['children_data']),
      );
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController phone = TextEditingController();
    return ListView(
      children: [
        CategorySlider(categories: categories),
        Container(
          margin: const EdgeInsets.only(top: 10),
          child: const BannerCarausel(),
        ),
        MindCliksTextFormField(
          label: "Hello World",
          controller: null,
          required: true,
          type: "",
        ),
        MindCliksPasswordField(
          label: "Password",
        ),
        MindsCliksPhoneField(controller: phone, onCountryCodeChange: () => {})
      ],
    );
  }
}
