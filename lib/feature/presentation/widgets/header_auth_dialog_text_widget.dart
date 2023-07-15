import 'package:auth_test_app/common/app_colors.dart';
import 'package:flutter/material.dart';

class HeaderAuthDialogText extends StatelessWidget {
  const HeaderAuthDialogText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Вход',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 39,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 8.0, bottom: 20.0),
          child: Text(
            'Введите данные, чтобы войти в личный кабинет.',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              height: 26 / 15,
              fontSize: 15,
              color: AppColors.textPColor,
            ),
          ),
        ),
      ],
    );
  }
}
