import 'package:flutter/material.dart';
import 'package:patra/widgets/category_slider.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        CategorySlider()
      ],
    );
  }
}