import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

interestCard(String label, String value, String footer) {
  return Container(
    margin: const EdgeInsets.only(right: 5),
    width: 267,
    height: 110,
    child: Card(
      elevation: 6,
      shadowColor: const Color.fromRGBO(0, 0, 0, 0.2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 28),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  label,
                  style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                ),
                Text(value, style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.green[800])),
                AutoSizeText(footer, style: const TextStyle(color: Colors.grey), maxLines: 1),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 28),
            child: Image.asset("assets/icons/icon.png"),
          )
        ],
      ),
    ),
  );
}
