import 'package:flutter/material.dart';
import 'package:sametsahin_dev/config/themes.dart';
import 'package:sametsahin_dev/pages/home_page.dart';
import 'package:sametsahin_dev/widgets/theme_inherited_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeSwitcherWidget(
      initialDarkModeOn: false,
      child: SametSahin(),
    );
  }
}

class SametSahin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Samet Şahin',
      theme: ThemeSwitcher.of(context)
          .isDarkModeOn ? darkTheme(context) : lightTheme(context),
      home: HomePage(),
    );
  }
}

