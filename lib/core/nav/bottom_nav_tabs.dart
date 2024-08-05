import 'package:flutter/material.dart';
import 'package:movie_mot/screens/favorite/favorite_screen.dart';
import 'package:movie_mot/screens/home/home_screen.dart';
import 'package:movie_mot/screens/settings/settings_screen.dart';

final List<Widget> navPages = <Widget>[
  const HomeScreen(),
  const FavoriteScreen(),
  const SettingsScreen()
];

final List<IconData>navIconList  = <IconData>[
  Icons.home,
  Icons.favorite,
  Icons.settings
];

final List<String> navIconTexts = <String>[
  'Home',
  'Favorites',
  'Settings'
];
