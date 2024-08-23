import 'package:flutter/material.dart';
import 'package:tete_shop/models/restaurant.dart';
import 'package:tete_shop/pages/intro_page.dart';
import 'themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  //runApp(MyApp());

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => ThemeProvider()),
      ChangeNotifierProvider(create: (context) => Restaurant()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const IntroPage(), // Đặt IntroPage là màn hình đầu tiên
        routes: {
          '/intropage': (context) => const IntroPage(),
        });
  }
}
