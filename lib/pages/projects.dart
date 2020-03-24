import 'package:piyushpassi/config/assets.dart';
import 'package:piyushpassi/config/constants.dart';
import 'package:piyushpassi/config/projects.dart';
import 'package:piyushpassi/config/themes.dart';
import 'package:piyushpassi/widgets/project_widget.dart';
import 'package:piyushpassi/widgets/responsive_widget.dart';
import 'package:piyushpassi/widgets/theme_inherited_widget.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'dart:html' as html;

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        _popNavigationWithResult(context, 'from_back');
        return false;
      },
      child: Scaffold(
          appBar: new AppBar(
            centerTitle: true,
            title: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                FlatButton.icon(
                  icon: SizedBox(child: l),
                  label: Text(''),
                  onPressed: () {},
                ),
                    IconButton(
                      icon: ThemeSwitcher.of(context).isDarkModeOn
                          ? Image.asset(
                              Assets.moon,
                              height: 20,
                              width: 20,
                            )
                          : Icon(Icons.wb_sunny),
                      onPressed: () {
                        if (ThemeSwitcher.of(context).isDarkModeOn == true) {
                          ThemeSwitcher.of(context).switchDarkMode();
                        } else {
                          ThemeSwitcher.of(context).switchDarkMode();
                        }
                        if (n ==
                            NetworkImage(
                                "https://i.ibb.co/87WGknD/bg-light.jpg")) {
                          n = NetworkImage(
                              "https://i.ibb.co/f9w1yyn/bg-dark.jpg");
                          i = Image.asset(
                            'images/design1.png',
                            height: 400,
                            width: 400,
                          );
                          l = new Image.asset(
                            'assets/title.png',
                            fit: BoxFit.contain,
                            height: 32,
                            width: 32,
                          );
                        } else {
                          n = NetworkImage(
                              "https://i.ibb.co/87WGknD/bg-light.jpg");
                          i = Image.asset(
                            'images/design.png',
                            height: 400,
                            width: 400,
                          );
                          l = new Image.asset(
                            'assets/title1.png',
                            fit: BoxFit.contain,
                            height: 32,
                            width: 32,
                          );
                        }
                      },
                    )
                  ],
                )),
            actions: <Widget>[],
          ),
          body: ResponsiveWidget(
            largeScreen: GridView.count(
              padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 32.0),
              crossAxisCount: 3,
              childAspectRatio: MediaQuery.of(context).size.width /
                  (MediaQuery.of(context).size.height / 1.3),
              children: List.generate(projects.length,
                  (index) => ProjectWidget(projects[index], 0)),
            ),
            smallScreen: ListView.builder(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 50),
                itemCount: projects.length,
                itemBuilder: (context, index) => ProjectWidget(projects[index],
                    (index == projects.length - 1 ? 16.0 : 0))),
          )),
    );
  }

  void _popNavigationWithResult(BuildContext context, dynamic result) {
    Navigator.pop(context, result);
  }
}
