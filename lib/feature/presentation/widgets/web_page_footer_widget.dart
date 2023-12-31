import 'package:auth_test_app/common/app_colors.dart';
import 'package:auth_test_app/common/image_urls.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FooterForWebPageWidget extends StatelessWidget {
  const FooterForWebPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 140, right: 140),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColors.footerBackgroundColor,
      ),
      child: Column(
        children: [
          const SizedBox(height: 80),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _headerText('Компания'),
                  _paragraphText('Omega Studio'),
                  _paragraphText('Работа в Omega Studio'),
                  const SizedBox(height: 70.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _headerText('Разработчикам'),
                      _paragraphText('Справка'),
                    ],
                  ),
                ],
              ),
              const SizedBox(width: 70.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _headerText('Пользователям'),
                  _paragraphText('Пользовательское \nсоглашение'),
                  _paragraphText('Политика \nконфиденциальности'),
                  _paragraphText('Политика использования \nфайлов cookie'),
                  _paragraphText('Справка'),
                ],
              ),
              const SizedBox(width: 70.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _headerText('Бизнесу'),
                  _paragraphText('Контакты'),
                  _paragraphText('Новости'),
                  _paragraphText('Справка'),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  _button('assets/icons/download.svg', 'Скачать приложение'),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      const Text(
                        'Социальные \nсети:',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(width: 15),
                      _button('assets/icons/vk.svg'),
                      const SizedBox(width: 10),
                      _button('assets/icons/telegram.svg'),
                      const SizedBox(width: 10),
                      _button('assets/icons/youtube.svg'),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 28),
          const Divider(
            thickness: 0.5,
            color: Color(0xFF9BA4C1),
          ),
          const SizedBox(height: 28),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _footerAboutText('© 2023ООО «ОМЕГА СТУДИО»'),
                  const SizedBox(height: 10),
                  _footerAboutText(
                      'ИНН: 3528327105, ОГРН: 1213500003122162608,'),
                  const SizedBox(height: 10),
                  _footerAboutText(
                      'Вологодская область, г.Череповец, ул Белинского, д.1/3'),
                ],
              ),
              const Spacer(),
              Image.network(
                ImageUrls.webFooterLogo,
                width: 153,
                height: 78,
              ),
            ],
          ),
          const SizedBox(height: 80),
        ],
      ),
    );
  }

  Widget _footerAboutText(String text) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
    );
  }

  Widget _headerText(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _paragraphText(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Text(
        text,
        style: const TextStyle(
          height: 26 / 16,
          color: AppColors.bgCardColor,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  Widget _button(String icon, [String? text]) {
    return Container(
      padding: text == null ? null : const EdgeInsets.only(left: 22.0, right: 32.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.all(10.0),
            height: 24,
            width: 24,
            child: SvgPicture.asset(
              icon,
            ),
          ),
          Text(
            text ?? '',
            style: const TextStyle(
              color: AppColors.footerIconColor,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
