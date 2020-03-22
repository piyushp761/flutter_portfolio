import 'package:piyushpassi/config/assets.dart';
import 'package:piyushpassi/widgets/theme_inherited_widget.dart';
import 'package:flutter/material.dart';
import 'package:piyushpassi/config/constants.dart';
import 'dart:html' as html;
import 'projects.dart';

NetworkImage n = new NetworkImage("https://i.ibb.co/87WGknD/bg-light.jpg");
Image i = new Image.asset(
  'images/design1.png',
  height: 400,
  width: 400,
);
Image l = new Image.asset(
  'assets/title.png',
  fit: BoxFit.contain,
  height: 32,
  width: 32,
);

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /*int _selectedIndex = 0;
  static List<Widget> tabWidgets = <Widget>[
    AboutTab(),
    ProjectsTab(),
  ];

  @override
  void initState() {
    super.initState();
  }*/

  void change() {
    ThemeSwitcher.of(context).switchDarkMode();
    setState(() {
      if (n == NetworkImage("https://i.ibb.co/87WGknD/bg-light.jpg")) {
        n = NetworkImage("https://i.ibb.co/f9w1yyn/bg-dark.jpg");
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
        n = NetworkImage("https://i.ibb.co/87WGknD/bg-light.jpg");
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
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        new Container(
          height: double.infinity,
          width: double.infinity,
        ),
        Scaffold(
            appBar: new AppBar(
              backgroundColor: Colors.transparent,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  FlatButton.icon(
                    icon: SizedBox(child: l),
                    label: Text('PiyushPassi.com'),
                    onPressed: () {},
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
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
                        hoverColor: Color.fromARGB(50, 10, 10, 10),
                        icon: ThemeSwitcher.of(context).isDarkModeOn
                            ? Icon(Icons.wb_sunny)
                            : Image.asset(
                                Assets.moon,
                                height: 20,
                                width: 20,
                              ),
                        onPressed: change,
                      ),
                    ],
                  )
                ],
              ),
              elevation: 0.0,
              actions: <Widget>[],
            ),
            body: SingleChildScrollView(
              child: new Padding(
                padding: EdgeInsets.fromLTRB(30, 100, 0, 0),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Wrap(
                          direction: Axis.horizontal,
                          alignment: WrapAlignment.center,
                          runAlignment: WrapAlignment.end,
                          runSpacing: 20.0,
                          children: <Widget>[
                            Text(
                              'Hello! I am Piyush Passi - a Software Engineer and UX Designer from New Delhi, India.',
                              textScaleFactor: 2,
                              textAlign: TextAlign.start,
                            ),
                          ]),
                      SizedBox(
                        height: 20,
                      ),
                      i,
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          FlatButton.icon(
                            icon: SizedBox(child: Icon(Icons.email)),
                            label: Text(
                              'Get in touch',
                              textScaleFactor: 2,
                            ),
                            onPressed: () => html.window
                                .open(Constants.CONTACT_EMAIL, 'piyushpassi'),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          FlatButton.icon(
                            icon: SizedBox(child: Icon(Icons.filter)),
                            label: Text(
                              'My Work',
                              textScaleFactor: 2,
                            ),
                            onPressed: () async {
                              var navigationResult = await Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (context) => Page2()));
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Wrap(
                          direction: Axis.horizontal,
                          alignment: WrapAlignment.center,
                          runAlignment: WrapAlignment.end,
                          runSpacing: 20.0,
                          children: <Widget>[
                            FlatButton.icon(
                              icon: SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: Image.asset(
                                      ThemeSwitcher.of(context).isDarkModeOn
                                          ? Assets.github
                                          : Assets.github_light)),
                              label: Text('Github'),
                              onPressed: () => html.window.open(
                                  Constants.PROFILE_GITHUB, 'piyushpassi'),
                            ),
                            FlatButton.icon(
                              icon: SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: Image.asset(
                                      ThemeSwitcher.of(context).isDarkModeOn
                                          ? Assets.stackoverflow
                                          : Assets.stackoverflow_light)),
                              label: Text('Stackoverflow'),
                              onPressed: () => html.window.open(
                                  Constants.PROFILE_STACKOVERFLOW,
                                  'piyushpassi'),
                            ),
                            FlatButton.icon(
                              icon: SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: Image.asset(
                                      ThemeSwitcher.of(context).isDarkModeOn
                                          ? Assets.medium
                                          : Assets.medium_light)),
                              label: Text('Medium'),
                              onPressed: () => html.window.open(
                                  Constants.PROFILE_MEDIUM, 'piyushpassi'),
                            ),
                            FlatButton.icon(
                              icon: SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: Image.asset(
                                      ThemeSwitcher.of(context).isDarkModeOn
                                          ? Assets.instagram
                                          : Assets.instagram_light)),
                              label: Text('Instagram'),
                              onPressed: () => html.window.open(
                                  Constants.PROFILE_INSTAGRAM, 'piyushpassi'),
                            ),
                            FlatButton.icon(
                              icon: SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: Image.asset(
                                      ThemeSwitcher.of(context).isDarkModeOn
                                          ? Assets.linkedin
                                          : Assets.linkedin_light)),
                              label: Text('Linkedin'),
                              onPressed: () => html.window.open(
                                  Constants.PROFILE_LINKEDIN, 'piyushpassi'),
                            )
                          ]),
                    ],
                  ),
                ),
              ),
            ))
      ],
    );
  }
}
