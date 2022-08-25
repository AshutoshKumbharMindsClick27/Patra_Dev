import 'package:flutter/material.dart';
import 'package:patra/models/category.dart';
import 'package:patra/services/category_service.dart';
import 'package:patra/widgets/category_circle.dart';

class CategorySlider extends StatefulWidget {
  const CategorySlider({Key? key}) : super(key: key);

  @override
  State<CategorySlider> createState() => _CategorySliderState();
}

class _CategorySliderState extends State<CategorySlider> {
  var categories = [];
  @override
  void initState() {
    handleFetchCategories();
    super.initState();
  }

  handleFetchCategories() async {
    var data = await CategoryService.fetchCategories();
    var defaultCategory = data.data['children_data'][0]['children_data'];
    for (var element in defaultCategory) {
      categories.add(Category(
          id: element['id'],
          title: element['name'],
          imgUrl:
              "https://images-eu.ssl-images-amazon.com/images/G/31/img19/2020/PC/Mobile._SY232_CB431401553_.jpg"));
    }
    setState(() {});
  }

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
                categories.map(
                  (category) => Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: CategoryCircle(
                      image: category.imgUrl,
                      categoryName: category.title,
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
