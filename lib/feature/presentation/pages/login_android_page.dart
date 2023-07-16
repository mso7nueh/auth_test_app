import 'package:auth_test_app/common/image_urls.dart';
import 'package:auth_test_app/feature/presentation/widgets/login_card_widget.dart';
import 'package:flutter/material.dart';

class LoginPageForAndroid extends StatelessWidget {
  const LoginPageForAndroid({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          MediaQuery.of(context).orientation == Orientation.portrait
              ? ImageUrls.verticalAndroidBackgroundImage
              : ImageUrls.horizontalAndroidBackgroundImage,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: LoginCardWidget(
                width:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? double.infinity
                        : 573.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
