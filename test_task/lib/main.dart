import 'package:flutter/material.dart';
import 'package:test_task/screens/main_page.dart';
import 'package:test_task/utils/app_theme.dart';
import 'package:test_task/widgets/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.data(),
      home: const AppBottomNavbar(),
    );
  }
}
