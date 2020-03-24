import 'package:piyushpassi/config/assets.dart';
import 'package:piyushpassi/widgets/theme_inherited_widget.dart';
import 'package:flutter/material.dart';
import 'package:piyushpassi/config/constants.dart';
import 'dart:html' as html;
import 'projects.dart';

NetworkImage n = new NetworkImage("https://i.ibb.co/87WGknD/bg-light.jpg");
Image i = new Image.asset(
  'images/design.png',
  height: 400,
  width: 400,
);
Image l = new Image.asset(
  'assets/title1.png',
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
        n = NetworkImage("https://i.ibb.co/87WGknD/bg-light.jpg");
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
    });
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    if (width > 800){
      width = width*.45;
    }
    else{
      width = width*.90;
    }

    return Stack(
      children: <Widget>[
        new Container(
          height: double.infinity,
          width: double.infinity,
        ),
        Scaffold(
            appBar: new AppBar(
              backgroundColor: Colors.transparent,
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
                      hoverColor: Color.fromARGB(50, 10, 10, 10),
                      icon: ThemeSwitcher.of(context).isDarkModeOn
                          ? Image.asset(
                              Assets.moon,
                              height: 20,
                              width: 20,
                            )
                          : Icon(Icons.wb_sunny),
                      onPressed: change,
                    ),
                  ])),
              elevation: 0.0,
              actions: <Widget>[],
            ),
            body: SingleChildScrollView(
              child: new Padding(
                padding: EdgeInsets.fromLTRB(10, 100, 10, 100),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Wrap(
                          direction: Axis.horizontal,
                          alignment: WrapAlignment.center,
                          runAlignment: WrapAlignment.end,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          runSpacing: 20.0,
                          children: <Widget>[
                            Text(
                              'Hello! I am Piyush Passi - a Software Engineer \nand UX Designer from New Delhi, India.',
                              textScaleFactor: 1.5,
                              textAlign: TextAlign.start,
                            ),
                          ]),
                      SizedBox(
                        height: 40,
                      ),
                      i,
                      SizedBox(
                        height: 40,
                      ),
                      Wrap(
                        direction: Axis.horizontal,
                        alignment: WrapAlignment.center,
                        runAlignment: WrapAlignment.center,
                        children: <Widget>[
                          FlatButton.icon(
                            icon: SizedBox(child: Icon(Icons.email)),
                            label: Text(
                              'Get in touch',
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textScaleFactor: 1.2,
                            ),
                            onPressed: () => html.window
                                .open(Constants.CONTACT_EMAIL, 'piyushpassi'),
                          ),
                          FlatButton.icon(
                            color: Color.fromARGB(50, 219, 135, 255),
                            icon: SizedBox(child: Icon(Icons.filter)),
                            label: Text(
                              'My Work',
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textScaleFactor: 1.2,
                            ),
                            onPressed: () async {
                              var navigationResult = await Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (context) => Page2()));
                            },
                          ),
                          FlatButton.icon(
                            icon:
                                SizedBox(child: Icon(Icons.insert_drive_file)),
                            label: Text(
                              'Résumé',
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textScaleFactor: 1.2,
                            ),
                            onPressed: () => html.window
                                .open(Constants.RESUME, 'piyushpassi'),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
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
                                          ? Assets.github_light
                                          : Assets.github)),
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
                                          ? Assets.behance_light
                                          : Assets.behance)),
                              label: Text('Behance'),
                              onPressed: () => html.window.open(
                                  Constants.PROFILE_BEHANCE, 'piyushpassi'),
                            ),
                            FlatButton.icon(
                              icon: SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: Image.asset(
                                      ThemeSwitcher.of(context).isDarkModeOn
                                          ? Assets.stackoverflow_light
                                          : Assets.stackoverflow)),
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
                                          ? Assets.medium_light
                                          : Assets.medium)),
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
                                          ? Assets.instagram_light
                                          : Assets.instagram)),
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
                                          ? Assets.linkedin_light
                                          : Assets.linkedin)),
                              label: Text('Linkedin'),
                              onPressed: () => html.window.open(
                                  Constants.PROFILE_LINKEDIN, 'piyushpassi'),
                            )
                          ]),
                      SizedBox(
                        height: 40,
                      ),
                      Wrap(
                        direction: Axis.horizontal,
                        alignment: WrapAlignment.center,
                        runSpacing: 40,
                        spacing: 40,
                        children: <Widget>[
                          CircleAvatar(
                            radius: 100,
                            backgroundImage: Image.asset(Assets.avatar).image,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'About Me',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textScaleFactor: 1.5,
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(height:10),
                              Container(
                                  width: width,
                                  child: Text(
                                    "I am a final year Software Engineering student at Delhi Technological Unveristy. I am also a User Experience enthusiast, and have dedicated the last 2 years of my life in learning the art of creating meaningful interactions between human and machine. I also love mathematics and solving problems (of any kind!). When I'm not coding or designing, I can be found trying to solve a Rubik's cube as fast as possible, helping organize a competition for the same and playing video games.",
                                    textScaleFactor: 1.4,
                                  )),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ))
      ],
    );
  }
}
