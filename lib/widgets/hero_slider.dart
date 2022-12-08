import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

heroSlider(String title, String subtitle, String img, Color clr) {
  return Container(
    margin: const EdgeInsets.only(right: 15),
    height: 150,
    width: 310,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: clr, boxShadow: [
      BoxShadow(color: clr.withOpacity(0.5), blurRadius: 10, spreadRadius: 2, offset: Offset.fromDirection(1.0, 4.0))
    ]),
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 150,
                child: Text(
                  title,
                  style: const TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                width: 146,
                child: AutoSizeText(
                  subtitle,
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                  maxLines: 3,
                ),
              )
            ],
          ),
          Image.asset("assets/icons/$img")
        ],
      ),
    ),
  );
}
