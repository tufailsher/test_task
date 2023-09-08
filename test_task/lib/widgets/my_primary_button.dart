import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../utils/size_config.dart';

class MyPrimaryButton extends StatelessWidget {
  final Function() onPressed;
  final Color? color;
  final String title;
  const MyPrimaryButton({Key? key, required this.onPressed, required this.title, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        fixedSize:Size(sizeConfig.width(.25), sizeConfig.height(.05)),
        shape:  StadiumBorder(side: BorderSide(color: AppColors.bborderColor)),
        backgroundColor: AppColors.appBarColor,
        textStyle: const TextStyle(fontSize: 20),

      ),
      onPressed: onPressed,
      child:
      Row(
        children: [
          Icon(Icons.star,color: color,),
          SizedBox(width: 4,),
          Text(title,style: TextStyle(color: AppColors.textColor,fontSize: 16),),
        ],
      ),
    );
  }
}