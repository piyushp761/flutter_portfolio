import 'package:piyushpassi/config/assets.dart';
import 'package:piyushpassi/config/constants.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;

import '../widgets/theme_inherited_widget.dart';

class AboutTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Wrap(
                  direction: Axis.horizontal,
                  alignment: WrapAlignment.center,
                  spacing: 10.0,
                  runAlignment: WrapAlignment.end,
                  runSpacing: 20.0,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Hello! I am Piyush Passi - a Software Engineer and UX Designer from Delhi, India.',
                          textScaleFactor: 2,
                        ),
                        Text(
                          'Piyush Passi',
                          textScaleFactor: 4,
                        ),
                        Text(
                          'Software Engineer, UI/UX Designer',
                          textScaleFactor: 2,
                        ),
                        Text(
                          'Final year student @ Delhi Technological University',
                          textScaleFactor: 1,
                        ),
                      ],
                    )
                  ]),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      onPressed: null,
                      child: Text("Get In Touch"),
                      color: Colors.blue,
                    ),
                    FlatButton(
                      onPressed: null,
                      child: Text("My Work"),
                      color: Colors.blue,
                    )
                  ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.github)),
                    label: Text('Github'),
                    onPressed: () => html.window
                        .open(Constants.PROFILE_GITHUB, 'adityadroid'),
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
                    onPressed: () => html.window
                        .open(Constants.PROFILE_MEDIUM, 'adityadroid'),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FlatButton.icon(
                      icon: SizedBox(
                          width: 20,
                          height: 20,
                          child: Image.asset(Assets.instagram)),
                      label: Text('Instagram'),
                      onPressed: () => html.window),
                  FlatButton.icon(
                    icon: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(Assets.linkedin)),
                    label: Text('Linkedin'),
                    onPressed: () => html.window
                        .open(Constants.PROFILE_LINKEDIN, 'adityadroid'),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
