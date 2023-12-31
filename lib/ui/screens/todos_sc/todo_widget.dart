import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todo_app/utilities/app_colors.dart';
import 'package:todo_app/utilities/app_theme.dart';

class TodoWidget extends StatelessWidget {
  const TodoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.symmetric(
        vertical: height * 0.03,
        horizontal: width * 0.05,
      ),
      child: Slidable(
        startActionPane: const ActionPane(
            extentRatio: 0.31,
            motion: StretchMotion(),
            children: [
              SlidableAction(
                borderRadius:
                    BorderRadius.horizontal(left: Radius.circular(15)),
                onPressed: null,
                backgroundColor: Color(0xFFFE4A49),
                foregroundColor: Colors.white,
                icon: Icons.delete,
                label: 'Delete',
              )
            ]),
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: height * 0.03,
            horizontal: width * 0.05,
          ),
          child: Row(
            children: [
              Container(
                width: width * 0.0075,
                height: height * 0.075,
                decoration: const BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
              ),
              SizedBox(width: width * 0.05),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Clean the house",
                    style: AppTheme.taskTitleTextStyle
                        .copyWith(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  Row(
                    children: [
                      Icon(Icons.hourglass_bottom_rounded,
                          size: height * 0.025),
                      Text(
                        "9:30 AM",
                        style: AppTheme.taskDescriptionTextStyle.copyWith(
                            fontSize: 14, fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.primary),
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.035, vertical: height * 0.0025),
                child: const Icon(
                  Icons.check,
                  color: AppColors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
