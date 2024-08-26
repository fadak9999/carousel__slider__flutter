import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    ////
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Carousel Slider '),
        ),
        body: CarouselExample(),
      ),
    );
  }
}

////
// ignore: use_key_in_widget_constructors
class CarouselExample extends StatelessWidget {
  final List<String> imageList = [
    'https://via.placeholder.com/600x400.png?text=Slide+1',
    'https://via.placeholder.com/600x400.png?text=Slide+2',
    'https://via.placeholder.com/600x400.png?text=Slide+3',
    'https://via.placeholder.com/600x400.png?text=Slide+4',
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 400.0,
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        viewportFraction: 0.8,
      ),
      items: imageList
          .map((item) => Center(
            child: Image.network(item, fit: BoxFit.cover, width: 1000),
          ))
          .toList(),
    );
  }
}
