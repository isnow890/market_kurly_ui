import 'package:flutter/material.dart';
import 'package:impl/screens/category/category_screen.dart';
import 'package:impl/screens/home/home_screen.dart';
import 'package:impl/screens/my_kurly/my_kurly_screen.dart';
import 'package:impl/screens/recommend/recommend_screen.dart';
import 'package:impl/screens/search/search_screen.dart';
import 'package:flutter_svg/svg.dart';
import '../models/nav_item.dart';

class MainScreens extends StatefulWidget {
  const MainScreens({super.key});

  static String routeName = '/main_screens';

  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          HomeScreen(),
          RecommendScreen(),
          CategoryScreen(),
          SearchScreen(),
          MyKurlScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        backgroundColor: Colors.white,
        onTap: onTaped,
        items: List.generate(
            navItems.length,
            (index) => _buildBottomNavigationBarItem(
                icon: navItems[index].icon,
                label: navItems[index].label,
                isActive: navItems[index].id == _selectedIndex)),
      ),
    );
  }

  void onTaped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  _buildBottomNavigationBarItem(
      {String? icon,
      required String label,
      required bool isActive,
      VoidCallback? onPressed}) {
    return BottomNavigationBarItem(
      icon: SizedBox(
        width: 38,
        height: 38,
        child: IconButton(
          onPressed: onPressed,
          icon: SvgPicture.asset(icon ?? 'assets/icons/star.svg'),
        ),
      ),
      label: label,
    );
  }
}
