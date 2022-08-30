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
          minRadius: 25,
          backgroundImage: NetworkImage(image!),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          child: Text(
            categoryName!,
            style: TextStyle(fontSize: Constants.body5),
          ),
        )
      ],
    );
  }
}
