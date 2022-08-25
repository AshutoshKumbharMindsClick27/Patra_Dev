class Category {
  final int? id;
  final String? title;
  final String? imgUrl;

  Category({this.id, this.title, this.imgUrl});
}

class CategoryStore {
  static List<Category> store = [
    Category(
        id: 1,
        title: "Computers",
        imgUrl:
            "https://www.pngitem.com/pimgs/m/87-874013_a-picture-showing-a-retina-apple-imac-from.png"),
    Category(
        id: 2,
        title: "Laptops",
        imgUrl:
            "https://www.apple.com/newsroom/images/tile-images/Apple_16-inch-MacBook-Pro_111319.jpg.news_app_ed.jpg"),
    Category(
        id: 3,
        title: "Furniture",
        imgUrl:
            "https://images.pexels.com/photos/1866149/pexels-photo-1866149.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
    Category(
        id: 4,
        title: "Fashion",
        imgUrl:
            "https://rukminim1.flixcart.com/flap/128/128/image/c12afc017e6f24cb.png?q=100"),
    Category(
        id: 5,
        title: "Groceries",
        imgUrl:
            "https://rukminim1.flixcart.com/flap/128/128/image/29327f40e9c4d26b.png?q=100"),
    Category(
        id: 6,
        title: "Travel",
        imgUrl:
            "https://rukminim1.flixcart.com/flap/128/128/image/71050627a56b4693.png?q=100"),
    Category(
        id: 7,
        title: "Toys",
        imgUrl:
            "https://rukminim1.flixcart.com/flap/128/128/image/dff3f7adcf3a90c6.png?q=100"),
  ];
}
