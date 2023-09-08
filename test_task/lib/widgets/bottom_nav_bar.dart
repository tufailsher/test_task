import 'package:flutter/material.dart';
import 'package:test_task/screens/main_page.dart';
import 'package:test_task/utils/app_colors.dart';
import 'package:ultimate_bottom_navbar/ultimate_bottom_navbar.dart';

class AppBottomNavbar extends StatefulWidget {
  const AppBottomNavbar({Key? key}) : super(key: key);

  @override
  State<AppBottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<AppBottomNavbar> {
  @override
  int currentIndex = 0;

  final List<String> title = [
    "홈",
    "스팟",
    "",
    "채팅",
    "마이"
  ];

  final List<IconData> icons = [
    Icons.home,
    Icons.location_on_outlined,
    Icons.star,
    Icons.chat,
    Icons.person_outline_outlined,
  ];

  final List pages = [
    const MyHomePage(),
    const MyHomePage(),
    const MyHomePage(),
    const MyHomePage(),
    const MyHomePage(),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: UltimateBottomNavBar(

        backgroundColor: AppColors.bborderColor,
        foregroundColor: AppColors.appBarColor,
        selectedIconColor:AppColors.starColor,
        unselectedIconColor: AppColors.bborderColor,
        unselectedTextColor: AppColors.bborderColor,
        selectedTextColor: AppColors.starColor,
        // badgeTopPosition: 20,
        // badgeCircleRadius: 30,

        badgeColor: AppColors.bborderColor,
        midCircleBorderRadiusStatic: 30,

        // useForegroundShaderStroke: true,
        foregroundStrokeBorderColor: AppColors.bborderColor,
        animationType: Curves.bounceOut,
        staticCurve: true,
        // showCircleStaticMidItemStatic: true,


        icons         : icons,
        titles        : title,
        currentIndex  : currentIndex,
        onTap         : (index) async => onItemTapped(index),
      ),

    );
  }
  void onItemTapped(int index) async{
    setState(() {
      currentIndex = index;
    });
  }
}
