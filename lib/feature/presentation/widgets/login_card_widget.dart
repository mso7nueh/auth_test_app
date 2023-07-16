import 'dart:ui' as ui;

import 'package:auth_test_app/common/app_colors.dart';
import 'package:auth_test_app/feature/presentation/widgets/button_widget.dart';
import 'package:auth_test_app/feature/presentation/widgets/header_auth_dialog_text_widget.dart';
import 'package:auth_test_app/feature/presentation/widgets/or_join_with_widget.dart';
import 'package:auth_test_app/feature/presentation/widgets/social_join_buttons_group_widget.dart';
import 'package:auth_test_app/feature/presentation/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';

final emailTextEditingController = TextEditingController();
final passwordTextEditingController = TextEditingController();

class LoginCardWidget extends StatelessWidget {
  final double width;

  const LoginCardWidget({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ui.ImageFilter.blur(
        sigmaX: 7.5,
        sigmaY: 7.5,
      ),
      child: Container(
        width: width,
        padding: const EdgeInsets.all(30.0),
        decoration: BoxDecoration(
          color: const Color.fromARGB(191, 255, 255, 255),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const HeaderAuthDialogText(),
            TextFieldOmegaStyle(
              textInputType: TextInputType.emailAddress,
              labelText: 'E-mail',
              controller: emailTextEditingController,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
              child: TextFieldOmegaStyle(
                textInputType: TextInputType.visiblePassword,
                labelText: 'Пароль',
                controller: passwordTextEditingController,
              ),
            ),
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(bottom: 20.0),
              child: const Text(
                'Забыли пароль?',
                style: TextStyle(
                  color: AppColors.linkTextColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            const SizedBox(width: double.infinity, child: ButtonOmegaStyle()),
            const OrJoinWith(),
            const SocialJoinButtonGroup(),
            const SizedBox(
              height: 28,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Ещё нет аккаунта?',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textPColor,
                  ),
                ),
                Text(
                  'Зарегистрируйтесь',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: AppColors.linkTextColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
