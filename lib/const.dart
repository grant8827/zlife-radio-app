// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

//screens appbar colors
var appbarColor = Colors.amber;

//video and olay screen background
var mybackground = const BoxDecoration(
  image: DecorationImage(
    image: AssetImage(
      'lib/assets/images/bgzliferadio.png',
    ),
    fit: BoxFit.cover,
  ),
);

//drawer list color

var drawerSelectedColor = Colors.amber;
var drawerTileColor = const Color.fromARGB(255, 41, 41, 41);
var drawerUnselectyedColor = Color.fromARGB(255, 0, 0, 0);
