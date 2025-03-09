import 'package:flutter/material.dart'; // Flutter default carousel ke bina
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smitproject/data/sliderdata.dart';

class Sliderwidget extends StatelessWidget {
  const Sliderwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Center(
        child: CarouselSlider(
          options: CarouselOptions(
            height: 110.0,
            autoPlay: true,
            enlargeCenterPage: true,
            //aspectRatio: 16 / 9,
          ),
          items: imgList.map((imagePath) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(imagePath, fit: BoxFit.cover, width: 1000),
            );
          }).toList(),
        ),
      ),
    );
  }
}
