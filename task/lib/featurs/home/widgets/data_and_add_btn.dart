
import 'package:flutter/material.dart';
import 'package:mytask/core/helpers/extentsions.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_text_style.dart';
import '../../add_task/add_task_screen.dart';

class DateAndAddBtn extends StatelessWidget {
  const DateAndAddBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
       Expanded(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text("October 30, 2023",style: AppTextStyle.fontStyle20Bold,),
             Text("Today",style: AppTextStyle.fontStyle20Bold,),
           ],
         ),
       ),
        InkWell(
          onTap: (){
            context.push(AddTaskScreen());

          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 12),
            decoration: BoxDecoration(
                color :AppColors.primaryColor,
                borderRadius: BorderRadius.circular(10)
            ),
            child: Row(children: [
              Icon(Icons.add,color: Colors.white,size: 18,),
              Text('Add Task',style: AppTextStyle.fontStyle17White,)
            ],),
          ),
        ),

      ],
    );
  }
}