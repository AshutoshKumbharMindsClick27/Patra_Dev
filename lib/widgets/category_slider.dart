import 'package:flutter/material.dart';
import 'package:patra/models/category.dart';
import 'package:patra/screens/category_details.dart';
import 'package:patra/services/category_service.dart';
import 'package:patra/widgets/category_circle.dart';

class CategorySlider extends StatefulWidget {
  final categories;
  const CategorySlider({Key? key, this.categories}) : super(key: key);

  @override
  State<CategorySlider> createState() => _CategorySliderState();
}

class _CategorySliderState extends State<CategorySlider> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.from(
                widget.categories.map(
                  (category) => Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: InkWell(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CategoryDetails(
                                categoryTitle: category.title,
                                subCategories: category.childrenData,
                              ))),
                      child: CategoryCircle(
                        image: category.imgUrl,
                        categoryName: category.title,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
