import 'package:flutter/material.dart';
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
        // barStyle: BubbleBarStyle.vertical,
        barStyle: BubbleBarStyle.horizontal,
        bubbleFillStyle: BubbleFillStyle.fill,
        // bubbleFillStyle: BubbleFillStyle.outlined,
        opacity: 0.3,
      ),
      iconSpace: 12.0,
      items: List.generate(
        navIconList.length,
        (index) => BottomBarItem(
          icon: Icon(navIconList[index]),
          title: Text(navIconTexts[index]),
          unSelectedColor: Colors.grey,
          selectedColor: Colors.white,
          backgroundColor: _selectedIndex == index ? Colors.blue : Colors.white,
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
