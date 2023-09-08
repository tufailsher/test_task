import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:test_task/utils/app_colors.dart';
import 'package:test_task/utils/app_theme.dart';
import 'package:test_task/widgets/app_bar.dart';
import 'package:test_task/widgets/my_primary_button.dart';

import '../utils/size_config.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  CarouselController buttonCarouselController = CarouselController();


  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    sizeConfig = SizeConfig.init(context);
  }
  final List<String> imageUrls = [
    'https://plus.unsplash.com/premium_photo-1679850625638-b055ae0ed409?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3027&q=80',
    'https://plus.unsplash.com/premium_photo-1679850625638-b055ae0ed409?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3027&q=80',
    'https://plus.unsplash.com/premium_photo-1679850625638-b055ae0ed409?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3027&q=80',

    // Add more image URLs as needed
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBarColor,
      appBar: Appappbar(),
      body: SingleChildScrollView(
        child: _body(),
      ),
    );
  }
  _body(){
    return Container(
      height: sizeConfig.height(0.76),
      child: CarouselSlider(
        items: imageUrls.map((imageUrl) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                // width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Stack(
                    children: [
                      Image.network(
                        imageUrl,
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        bottom: 65, // Adjust position as needed
                        left: 16,
                        child: MyPrimaryButton(
                            color: AppColors.bborderColor,
                            onPressed: () {}, title: "29,930"),),
                      Positioned(
                        bottom: 16, // Adjust position as needed
                        left: 16, // Adjust position as needed
                        child:
                        RichText(
                          text: TextSpan(
                            text: '잭과분홍콩나물 ',
                            style: AppTheme.textTheme.headline6,
                            children:  <TextSpan>[
                              TextSpan(text: '25', style: AppTheme.textTheme.subtitle1,),
                              TextSpan(text: '\n서울 2km 거리에 있음',style: AppTheme.textTheme.subtitle2),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                          bottom: 16, // Adjust position as needed
                          right: 4,
                          child: ClipOval(

                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                // gradient: LinearGradient(
                                //     begin: Alignment.centerLeft,
                                //     end: Alignment.centerRight,
                                //     colors: [
                                //       Colors.purple.shade900,
                                //       Colors.purple.shade100,
                                //     ]),
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: AppColors.bgradientColor, // Set the border color here
                                  width: 1.0, // Set the border width as needed
                                ),
                              ),
                              child: Material(

                                color: Colors.transparent, // Button color
                                child: InkWell(
                                  // splashColor: Colors.red, // Splash color
                                  onTap: () {},
                                  child: SizedBox(width: 56, height: 56, child: Icon(Icons.heart_broken,color: AppColors.bgradientColor,)),
                                ),
                              ),
                            ),
                          )  )
                    ],
                  ),
                ),
              );
            },
          );
        }).toList(),
        carouselController: buttonCarouselController,
        options: CarouselOptions(
          height: double.infinity, // Makes the carousel fullscreen
          enlargeCenterPage: true,
          // autoPlay: true,
          autoPlayInterval: Duration(seconds: 3), // Auto-rotate every 3 seconds
        ),
      ),
    );
  }
}
