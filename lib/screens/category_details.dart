import 'package:flutter/material.dart';
import 'package:patra/widgets/category_slider.dart';
import '../models/Category.dart';
import '../services/category_service.dart';
import '../widgets/bottom_navigation_bar.dart';
import '../widgets/nav_drawer.dart';
import '../widgets/navbar.dart';

class CategoryDetails extends StatefulWidget {
  final String categoryTitle;
  final List? subCategories;
  const CategoryDetails(
      {Key? key, required this.categoryTitle, this.subCategories})
      : super(key: key);

  @override
  State<CategoryDetails> createState() => _CategoryDetailsState();
}

class _CategoryDetailsState extends State<CategoryDetails> {
  void initState() {
    handleFetchCategories();
    super.initState();
  }

  var categories = [];
  handleFetchCategories() async {
    var defaultCategory = widget.subCategories;
    for (var element in defaultCategory!) {
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
    return Scaffold(
      drawer: const NavDrawer(), appBar: const NavBar(),
      body: Container(
        margin: const EdgeInsets.only(top: 20),
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 15),
              child: Text(widget.categoryTitle),
            ),
            (widget.subCategories != null && widget.subCategories!.isNotEmpty)
                ? CategorySlider(
                    categories: categories,
                  )
                : const SizedBox()
          ],
        ),
      ),
      // bottomNavigationBar: MindsClikBottomNavigationBar(
      //   onTap: _onItemTapped,
      //   selectedIndex: _selectedIndex,
      // ),
    );
  }
}
