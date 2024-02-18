import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uh_pm/pages/FavoritePage.dart';
import 'package:flutter_uh_pm/pages/HomePage.dart';
import 'package:flutter_uh_pm/pages/OrderPage.dart';
import 'package:flutter_uh_pm/pages/SearchPage.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> _buildScreens() {
      return [
        HomePage(),
        SearchPage(),
        FavoritePage(),
        OrderPage(),
      ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: Icon(
            CupertinoIcons.home,
            size: 40,
          ),
          activeColorPrimary: CupertinoColors.activeOrange,
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(
            CupertinoIcons.search,
            size: 40,
          ),
          activeColorPrimary: CupertinoColors.activeOrange,
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(
            Icons.favorite,
            size: 40,
          ),
          activeColorPrimary: CupertinoColors.activeOrange,
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(
            CupertinoIcons.square_list,
            size: 40,
          ),
          activeColorPrimary: CupertinoColors.activeOrange,
          inactiveColorPrimary: CupertinoColors.systemGrey,
        ),
      ];
    }

    PersistentTabController _controller;

    _controller = PersistentTabController(initialIndex: 0);

    return PersistentTabView(context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Color(0xFF2C2C2C), // Default is Colors.white.
        handleAndroidBackButtonPress: true, // Default is true.
        resizeToAvoidBottomInset:
            true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
        stateManagement: true, // Default is true.
        hideNavigationBarWhenKeyboardShows:
            true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10.0),
          colorBehindNavBar: Colors.white,
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: ItemAnimationProperties(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimation(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style3,
        navBarHeight: 80 // Choose the nav bar style with this property.
        );
  }
}
