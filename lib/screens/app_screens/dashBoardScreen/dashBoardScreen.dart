import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:threadsapp/common/theme/app_css.dart';
import 'package:threadsapp/extensions/extensions/spacing.dart';
import 'package:threadsapp/extensions/extensions/widget_extension.dart';
import 'package:threadsapp/screens/app_screens/homeScreen/homeScreen.dart';

import '../activityScreen/activityScreen.dart';
import '../newThreadsScreen/newThreadsScreen.dart';
import '../profileScreen/ProfileScreen.dart';
import '../searchBarScreen/SearchBarScreen.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  int currentIndex = 0;
  List<bool> isSelected = [false, false, false, false, false];
  List<Widget> pages = [
    HomeScreen(),
    SearchBarScreen(),
    ActivityScreen(),
    NewThreadsScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: pages[currentIndex],
      bottomNavigationBar: Container(
        alignment: Alignment.center,
        color: Colors.black,
        height: 70,
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SvgPicture.asset(
                  isSelected[0]
                      ? "imagesAssets/svg/homecolor.svg"
                      : "imagesAssets/svg/HomeIcon.svg",
                  height: 25)
              .inkWell(
            onTap: () {
              setState(() {
                currentIndex = 0;
                isSelected = [true, false, false, false, false];
              });
            },
          ),
          HSpace(Insets.i55),
          SvgPicture.asset(
            isSelected[1]
                ? "imagesAssets/svg/searchcolor.svg"
                : "imagesAssets/svg/SearchIcon.svg",
            height: 25,
          ).inkWell(
            onTap: () {
              setState(() {
                currentIndex = 1;
                isSelected = [false, true, false, false, false];
              });
            },
          ),
          HSpace(Insets.i55),
          SvgPicture.asset(
                  isSelected[2]
                      ? "imagesAssets/svg/newthreadscolor.svg"
                      : "imagesAssets/svg/Write.svg",
                  height: 25)
              .inkWell(
            onTap: () {
              setState(() {
                currentIndex = 2;
                isSelected = [false, false, true, false, false];
              });
            },
          ),
          HSpace(Insets.i55),
          SvgPicture.asset(
                  isSelected[3]
                      ? "imagesAssets/svg/Activitycolor.svg"
                      : "imagesAssets/svg/ActivityIcon.svg",
                  height: 25)
              .inkWell(
            onTap: () {
              setState(() {
                currentIndex = 3;
                isSelected = [false, false, false, true, false];
              });
            },
          ),
          HSpace(Insets.i55),
          SvgPicture.asset(
                  isSelected[4]
                      ? "imagesAssets/svg/Profilecolor.svg"
                      : "imagesAssets/svg/ProfileIcon1.svg",
                  height: 25)
              .inkWell(onTap: () {
            setState(() {
              currentIndex = 4;
              isSelected = [false, false, false, false, true];
            });
          }),
        ]),
      ),
    );
  }

  Future<void> myAsyncRefreshFunction() async {}
}
