import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_theme.dart';
import 'my_primary_button.dart';

class Appappbar extends StatelessWidget implements PreferredSizeWidget {
  const Appappbar({Key? key}) : super(key: key);
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return  AppBar(
      titleSpacing: 0,
      backgroundColor: AppColors.appBarColor,
      title: Text("목이길어슬픈기린님의 새로운 스팟",style: AppTheme.textTheme.subtitle2!.copyWith(color: AppColors.textColor,fontSize: 17),),
      leading:Icon(Icons.location_on_outlined,color:AppColors.textColor ,),
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8),
          child: MyPrimaryButton(onPressed: () {}, title: "323,233",color: AppColors.starColor),
        ),
        SizedBox(width: 4,),
        Stack(
          children: [
            Center(child: Icon(Icons.access_alarm, size: 24.0)),
            // Replace 48.0 with your desired icon size
            Positioned(
              right: -2,
              top: 10,
              child: Container(
                padding: EdgeInsets.all(4.0), // Adjust padding as needed
                decoration: BoxDecoration(
                  color: Colors.red, // Change color as needed
                  shape: BoxShape.circle,
                ),
                constraints: BoxConstraints(
                  minWidth: 8,
                  // Minimum width to ensure the badge is visible
                  minHeight:
                  8, // Minimum height to ensure the badge is visible
                ),

              ),
            ),
          ],
        ),
        SizedBox(width: 4,),
      ],


    );
  }
}
