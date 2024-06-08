import 'package:bookish/Features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const BookishApp());
}

class BookishApp extends StatelessWidget {
  const BookishApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home : SplashView(),
    );
  }
}
