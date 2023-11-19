import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/material.dart';
import 'package:horoscopo_app/pages/home/list_signos.dart';

import '../../data/dados_signos.dart' as colecao_signos;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var signos = colecao_signos.signos;

  List<BannerModel> listBanners = [
    BannerModel(imagePath: "img/banners/1.png", id: "1"),
    BannerModel(imagePath: "img/banners/2.png", id: "2"),
    BannerModel(imagePath: "img/banners/3.png", id: "3"),
    BannerModel(imagePath: "img/banners/4.png", id: "4"),
    BannerModel(imagePath: "img/banners/5.png", id: "5"),
    BannerModel(imagePath: "img/banners/6.png", id: "6"),
    BannerModel(imagePath: "img/banners/7.png", id: "7"),
    BannerModel(imagePath: "img/banners/8.png", id: "8"),
    BannerModel(imagePath: "img/banners/9.png", id: "9"),
    BannerModel(imagePath: "img/banners/10.png", id: "10"),
    BannerModel(imagePath: "img/banners/11.png", id: "11"),
    BannerModel(imagePath: "img/banners/12.png", id: "12"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text("Olá, seja bem-vindo(a) ao Horóscopo App!",
                style: TextStyle(fontSize: 20)),
            const SizedBox(height: 20),
            BannerCarousel(
              banners: listBanners,
              animation: true,
              onTap: (id) => print(id),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 80,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: signos.length,
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: ListSignos(signos[index]),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(width: 10);
                },
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                padding: const EdgeInsets.only(
                    top: 20, bottom: 10, left: 20, right: 20),
              ),
              child: const Text("Ver Signos",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
              onPressed: () {
                Navigator.pushNamed(context, '/signos');
              },
            ),
          ],
        ),
      ),
    );
  }
}
