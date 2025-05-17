import 'package:estore_ui/done/home_page.dart';
import 'package:estore_ui/home_layout.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ShoppingApp());
}

class ShoppingApp extends StatelessWidget {
  const ShoppingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homelayout(),
    );
  }
}
