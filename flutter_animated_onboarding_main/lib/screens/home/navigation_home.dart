import 'package:flutter_animated_onboarding_main/app_theme.dart';
import 'package:flutter_animated_onboarding_main/chatbot/chathome.dart';
import 'package:flutter_animated_onboarding_main/custom_drawer/drawer_user_controller.dart';
import 'package:flutter_animated_onboarding_main/custom_drawer/home_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_onboarding_main/profile/profile.dart';
import 'package:flutter_animated_onboarding_main/chatbot/chathome.dart';
import 'package:flutter_animated_onboarding_main/screens/home/home_screen.dart';

class NavigationHomeScreen extends StatefulWidget {
  @override
  _NavigationHomeScreenState createState() => _NavigationHomeScreenState();
}

class _NavigationHomeScreenState extends State<NavigationHomeScreen> {
  Widget? screenView;
  DrawerIndex? drawerIndex;

  @override
  void initState() {
    drawerIndex = DrawerIndex.home;
    screenView = HomeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.white,
      child: SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          backgroundColor: AppTheme.nearlyWhite,
          body: DrawerUserController(
            screenIndex: drawerIndex,
            drawerWidth: MediaQuery.of(context).size.width * 0.75,
            onDrawerCall: (DrawerIndex drawerIndexdata) {
              changeIndex(drawerIndexdata);
              //callback from drawer for replace screen as user need with passing DrawerIndex(Enum index)
            },
            screenView: screenView,
            //we replace screen view as we need on navigate starting screens like MyHomePage, HelpScreen, FeedbackScreen, etc...
          ),
        ),
      ),
    );
  }

  void changeIndex(DrawerIndex drawerIndexdata) {
    if (drawerIndex != drawerIndexdata) {
      drawerIndex = drawerIndexdata;
      switch (drawerIndex) {
        case DrawerIndex.home:
          setState(() {
            screenView = HomeScreen();
          });
          break;
        case DrawerIndex.profile:
          setState(() {
            screenView = Profile();
          });
          break;
        case DrawerIndex.chatbot:
          setState(() {
            screenView = Chathome();
          });
          break;
        default:
          break;
      }
    }
  }
}
