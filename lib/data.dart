import 'package:flutter/material.dart';

// -----------------------------------------------
// This is just to show how to manage dynamic data
// -----------------------------------------------

class HeroSlide {
  String title, subtitle, img;
  Color clr;

  HeroSlide({
    required this.title,
    required this.subtitle,
    required this.img,
    required this.clr,
  });
}

List<HeroSlide> heroData = [
  HeroSlide(
    title: "Credit Report",
    subtitle: "Access your free credit score and full credit report",
    img: "report.png",
    clr: const Color.fromRGBO(23, 109, 129, 1.0),
  ),
  HeroSlide(
    title: "Best Mortgage rates",
    subtitle: "See where are the best available mortgage rates right now",
    img: "house.png",
    clr: const Color.fromRGBO(231, 76, 60, 1.0),
  ),
  HeroSlide(
    title: "How much can I borrow?",
    subtitle: "Find out what you can afford to borrow",
    img: "contribution.png",
    clr: const Color.fromRGBO(12, 140, 233, 1.0),
  ),
  HeroSlide(
    title: "My offers",
    subtitle: "See what offers are available to you right now",
    img: "board.png",
    clr: const Color.fromRGBO(55, 71, 79, 1.0),
  ),
];
