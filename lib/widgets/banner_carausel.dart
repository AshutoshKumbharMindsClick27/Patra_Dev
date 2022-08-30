import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:patra/models/banner.dart';
import 'package:patra/services/banner_service.dart';
import 'package:patra/services/http_service.dart';

class BannerCarausel extends StatefulWidget {
  const BannerCarausel({Key? key}) : super(key: key);

  @override
  State<BannerCarausel> createState() => _BannerCarauselState();
}

class _BannerCarauselState extends State<BannerCarausel> {
  final List<BannerModel> bannersList = [];

  @override
  void initState() {
    handleFetchBanners();
    super.initState();
  }

  handleFetchBanners() async {
    final RequestResult banners = await BannerService.fetchBanners();

    setState(() {
      banners.data.forEach((banner) => {
            bannersList.add(BannerModel(
                content: banner['content'],
                id: banner['id'],
                status: banner['status'],
                title: banner['title'],
                filename: banner['filename']))
          });
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return CarouselSlider(
      options: CarouselOptions(
        height: height * 0.2,
        autoPlay: true,
        autoPlayAnimationDuration: const Duration(seconds: 1),
        autoPlayInterval: const Duration(seconds: 3),
      ),
      items: bannersList.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                decoration: const BoxDecoration(color: Colors.white),
                child: Image.network(i.filename!));
          },
        );
      }).toList(),
    );
  }
}
