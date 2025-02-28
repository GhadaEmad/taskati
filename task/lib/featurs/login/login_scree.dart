import 'package:flutter/material.dart';
import 'package:mytask/core/utils/app_text_style.dart';
import '../../core/utils/app_colors.dart';

class LoginScree extends StatefulWidget {
  const LoginScree({super.key});
  @override
  State<LoginScree> createState() => _LoginScreeState();
}


class _LoginScreeState extends State<LoginScree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: AppColors.primaryColor,
        ),
        actions: [
          Icon(Icons.sunny)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                   Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover
                            ,image: Image.asset("assts/image/profil.jpeg").image)
                    ),

                  ),

                  Icon(Icons.camera_alt,color:AppColors.primaryColor,),
                       ] ),
            ),
        SizedBox(height: 20,),
        Divider(
          indent: 20,
          endIndent: 20,
        ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Ghada Emad ",style: AppTextStyle.fontStyle20Bold.copyWith(color: AppColors.primaryColor,),),
                Icon(Icons.edit,color: Colors.blue,)
              ],
            )
          ],

        ),
      ),
    );
  }
}
