import 'package:piyushpassi/pages/home_page.dart';
import 'package:piyushpassi/widgets/theme_inherited_widget.dart';
import 'package:flutter/material.dart';

import 'config/themes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeSwitcherWidget(
      initialDarkModeOn: false,
      child: Piyush(),
    );
  }
}

class Piyush extends StatelessWidget {
  const Piyush({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Piyush Passi',
      theme: ThemeSwitcher.of(context).isDarkModeOn
          ? lightTheme(context)
          : darkTheme(context),
      home: HomePage(),
    );
  }
}
