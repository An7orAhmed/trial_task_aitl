import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

bigCard(String label, String subtitle, String img) {
  return Container(
    margin: const EdgeInsets.only(right: 5),
    width: 190,
    height: 212,
    child: Card(
      elevation: 6,
      color: const Color.fromRGBO(229, 255, 250, 1.0),
      shadowColor: const Color.fromRGBO(0, 0, 0, 0.2),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset("assets/icons/$img")),
            const SizedBox(height: 10),
            Text(
              label,
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            AutoSizeText(subtitle, minFontSize: 14, maxLines: 3),
          ],
        ),
      ),
    ),
  );
}
