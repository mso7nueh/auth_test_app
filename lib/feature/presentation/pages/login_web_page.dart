import 'package:auth_test_app/common/image_urls.dart';
import 'package:auth_test_app/feature/presentation/widgets/login_card_widget.dart';
import 'package:auth_test_app/feature/presentation/widgets/web_page_header_wiget.dart';
import 'package:flutter/material.dart';

class LoginPageForWeb extends StatelessWidget {
  const LoginPageForWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const HeaderForWebPageWidget(),
          Stack(
            alignment: Alignment.centerLeft,
            children: [
              Image.network(
                ImageUrls.webBackgroundImage,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 140.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: const LoginCardWidget(
                    width: 472.0,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
