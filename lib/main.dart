import 'dart:io' show Platform;

import 'package:auth_test_app/feature/presentation/bloc/login_bloc.dart';
import 'package:auth_test_app/feature/presentation/pages/login_android_page.dart';
import 'package:auth_test_app/feature/presentation/pages/login_web_page.dart';
import 'package:auth_test_app/feature/presentation/pages/login_windows_page.dart';
import 'package:auth_test_app/locator_service.dart' as di;
import 'package:auth_test_app/locator_service.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<LoginBloc>(),
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: 'Rubik',
          appBarTheme: const AppBarTheme(
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.white,
              statusBarIconBrightness: Brightness.dark,
              systemNavigationBarIconBrightness: Brightness.dark,
            ),
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            elevation: 0,
            toolbarHeight: 0,
          ),
          body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (!kIsWeb && Platform.isAndroid) {
                return const LoginPageForAndroid();
              } else if (!kIsWeb && Platform.isWindows) {
                return const LoginPageForWindows();
              } else {
                return const LoginPageForWeb();
              }
            },
          ),
        ),
      ),
    );
  }
}
