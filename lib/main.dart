import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_tutorial/clone_ui_one.dart';
import 'package:flutter_tutorial/tech_news_app/common/colors.dart';
import 'package:flutter_tutorial/tech_news_app/presentation/pages/home_tech_new.dart';
import 'package:flutter_tutorial/tech_news_app/presentation/widgets/text.dart';

void main() {
  final widgetBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetBinding);
  runApp(const HomeApp());
  FlutterNativeSplash.remove();
}

class HomeApp extends StatelessWidget {
  const HomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark, primaryColor: AppColors.primary),
      home: const HomeTechNew(),
    );
  }
}
