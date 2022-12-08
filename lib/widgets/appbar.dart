import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

myAppBar(String title) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(50),
    child: AppBar(
      shadowColor: const Color.fromRGBO(52, 52, 52, 0.2),
      title: Center(
        child: Text(
          title,
          style: const TextStyle(color: Color.fromRGBO(93, 100, 112, 1.0), fontSize: 22),
        ),
      ),
      backgroundColor: Colors.white,
      systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white, statusBarBrightness: Brightness.dark, statusBarIconBrightness: Brightness.dark),
    ),
  );
}
