import 'package:flutter/material.dart';
import 'package:patra/constants.dart';

class CategoryCircle extends StatelessWidget {
  final String? image;
  final String? categoryName;
  const CategoryCircle({
    Key? key,
    this.image,
    this.categoryName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          minRadius: 30,
          backgroundImage: NetworkImage(image!),
        ),
        Text(categoryName!)
      ],
    );
  }
}
