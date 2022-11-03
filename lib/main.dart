import 'package:flutter/material.dart';
import 'package:whatsapp_clone/views/home/home_page.dart';
import 'package:whatsapp_clone/views/login/login_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: Colors.green,
      ),
      indicatorColor: Colors.green,
      scaffoldBackgroundColor: Colors.grey[900],
      textTheme: const TextTheme(
        bodySmall: TextStyle(color: Colors.white38),
        bodyLarge: TextStyle(color: Colors.white),
        titleMedium: TextStyle(color: Colors.white),
      ),
    ),
    initialRoute: '/login',
    routes: {
      '/': (context) => const HomePage(),
      '/login': (context) => const LoginPage()
    },
  ));
}
