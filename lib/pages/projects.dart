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
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                    child: Wrap(
                  direction: Axis.horizontal,
                  runSpacing: 20,
                  spacing: 20,
                  alignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  runAlignment: WrapAlignment.center,
                  children: <Widget>[
                    FlatButton.icon(
                      icon: SizedBox(child: l),
                      label: Text(''),
                      onPressed: () => _popNavigationWithResult(context, 'from_pp'),
                    ),
                    FlatButton.icon(
                      icon: SizedBox(
                          width: 20,
                          height: 20,
                          child: Image.asset(
                              ThemeSwitcher.of(context).isDarkModeOn
                                  ? Assets.behance
                                  : Assets.behance_light)),
                      label: Text('Behance Portfolio'),
                      onPressed: () => html.window.open(
                        Constants.PROFILE_BEHANCE,
                        'piyushpassi',
                      ),
                    ),
                    IconButton(
                      icon: ThemeSwitcher.of(context).isDarkModeOn
                          ? Icon(Icons.wb_sunny)
                          : Image.asset(
                              Assets.moon,
                              height: 20,
                              width: 20,
                            ),
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
                        } else {
                          n = NetworkImage(
                              "https://i.ibb.co/87WGknD/bg-light.jpg");
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
                        }
                      },
                    )
                  ],
                )),
              ],
            ),
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
