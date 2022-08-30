import 'package:flutter/material.dart';
import 'package:patra/widgets/category_slider.dart';

import '../widgets/banner_carausel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const CategorySlider(),
        Container(
          margin: const EdgeInsets.only(top: 10),
          child: const BannerCarausel(),
        )
      ],
    );
  }
}
