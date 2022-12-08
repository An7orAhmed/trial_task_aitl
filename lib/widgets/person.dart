import 'package:flutter/material.dart';

personCard(String name, String img, bool status) {
  return SizedBox(
    width: 54,
    height: 90,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset("assets/avatar/$img"),
        Text(name, style: const TextStyle(fontWeight: FontWeight.bold), overflow: TextOverflow.ellipsis),
        Card(
          elevation: 0,
          color: status ? Colors.green[50] : Colors.grey[100],
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Text(
              status ? "Online" : "Offline",
              style: TextStyle(color: status ? Colors.green[800] : Colors.grey[600], fontSize: 11),
            ),
          ),
        )
      ],
    ),
  );
}
