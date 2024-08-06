import 'package:flutter/material.dart';
import 'package:movie_mot/core/themes/app_theme.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

import '../../core/nav/bottom_nav_tabs.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

int _selectedIndex = 0;

class _BaseScreenState extends State<BaseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _buildBottomNavigation(),
      body: SafeArea(child: navPages[_selectedIndex]),
    );
  }

  Widget _buildBottomNavigation() {
    return StylishBottomBar(
      option: BubbleBarOptions(
        barStyle: BubbleBarStyle.horizontal,
        bubbleFillStyle: BubbleFillStyle.fill,
        opacity: 1,
      ),
      iconSpace: 12.0,
      items: List.generate(
        navIconList.length,
        (index) => BottomBarItem(
          icon: Icon(
            navIconList[index],
            color:
                _selectedIndex == index ? Colors.white : Colors.grey,
          ),
          title: Text(
            navIconTexts[index],
            style: TextStyle(
                color: _selectedIndex == index ? Colors.white : Colors.black),
          ),
          unSelectedColor: Colors.grey,
          selectedColor: Colors.white,

          backgroundColor:
              _selectedIndex == index ? context.colors.primary.shade900 : Colors.white,
        ),
      ),
      hasNotch: true,
      currentIndex: _selectedIndex,
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
    );
  }
}
