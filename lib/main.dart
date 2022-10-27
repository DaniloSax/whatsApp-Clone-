import 'package:flutter/material.dart';
import 'package:whatsapp_clone/views/home/home_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.teal[800],
        ),
        indicatorColor: Colors.green,
        scaffoldBackgroundColor: Colors.teal[900],
        textTheme: const TextTheme(
          bodySmall: TextStyle(color: Colors.white38),
          bodyLarge: TextStyle(color: Colors.white),
          titleMedium: TextStyle(color: Colors.white),
        )),
    home: const HomePage(),
  ));
}
