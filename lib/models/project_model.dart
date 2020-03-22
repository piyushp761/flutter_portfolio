import 'package:flutter/material.dart';

class Project{
  String image;
  String name;
  String description;
  String link;
  String work;
  String tag1;
  String tag2;
  Project({@required this.image,@required this.name,@required this.description, this.link, this.work, this.tag1, this.tag2});
}