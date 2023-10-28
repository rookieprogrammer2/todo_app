import 'package:flutter/material.dart';
import 'package:todo_app/utilities/app_colors.dart';
import 'package:todo_app/utilities/app_theme.dart';
import 'package:todo_app/widgets/text_form_field.dart';

class MyBottomSheet extends StatelessWidget {
  const MyBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.55,
      padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.05,
          horizontal: MediaQuery.of(context).size.width * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Enter a new task",
            textAlign: TextAlign.center,
            style: AppTheme.bottomSheetTitleTextStyle.copyWith(
              fontSize: 17,
              fontWeight: FontWeight.w400,
            ),
          ),
          const MyTextFormField(label: "Title"),
          const MyTextFormField(label: "Description"),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          Text(
            "Select date",
            textAlign: TextAlign.start,
            style: AppTheme.bottomSheetTitleTextStyle.copyWith(
              fontSize: 17,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            "10-29-2023",
            textAlign: TextAlign.center,
            style: AppTheme.bottomSheetTitleTextStyle.copyWith(
              fontSize: 17,
              fontWeight: FontWeight.w300,
            ),
          ),
          const Spacer(),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            onPressed: () {},
            child: Text(
              "Create Task",
              textAlign: TextAlign.center,
              style: AppTheme.bottomSheetTitleTextStyle
                  .copyWith(color: AppColors.white),
            ),
          ),
        ],
      ),
    );
  }
}
