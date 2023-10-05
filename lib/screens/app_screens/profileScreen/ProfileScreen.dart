import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:threadsapp/common/theme/app_css.dart';
import 'package:threadsapp/extensions/extensions/spacing.dart';
import 'package:threadsapp/extensions/extensions/widget_extension.dart';
import 'package:threadsapp/routes/index.dart';
import 'package:threadsapp/screens/app_screens/profileScreen/layouts/repliesPage.dart';
import 'package:threadsapp/screens/app_screens/profileScreen/layouts/threadsPage.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<Tab> tabList = [
    const Tab(text: 'Threads'),
    const Tab(text: 'Replies'),
  ];

  List<Widget> allTabs = [
    const ThreadsPage(),
    const RepliesPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(children: [
          VSpace(Insets.i20),
          Row(
            children: [
              HSpace(Insets.i20),
              SvgPicture.asset("imagesAssets/svg/Privacyicon.svg", height: 25)
                  .inkWell(
                onTap: () {
                  Get.toNamed(routeName.privacyScreen);
                },
              ),
              HSpace(Insets.i270),
              SvgPicture.asset("imagesAssets/svg/Instagramicon.svg", height: 25)
                  .inkWell(
                onTap: () async {},
              ),
              HSpace(Insets.i20),
              SvgPicture.asset("imagesAssets/svg/Settings.svg", height: 25)
                  .inkWell(
                onTap: () {},
              ),
              HSpace(Insets.i20),
            ],
          ),
          VSpace(Insets.i20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    "Ajay Hariyani",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ).padding(right: 40),
                  Row(
                    children: [
                      HSpace(Insets.i10),
                      Text("ajay_hariyani_24",
                          style: TextStyle(color: Colors.white)),
                      HSpace(Insets.i10),
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color(0xff1e1e1e),
                            borderRadius: BorderRadius.circular(200)),
                        height: 30,
                        width: 100,
                        child: Text("threads.net",
                            style: TextStyle(color: Color(0xff5f5f5f))),
                      ),
                    ],
                  ).paddingOnly(left: 10),
                ],
              ),
              CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage("imagesAssets/images/p1.jpeg"),
              ).paddingOnly(right: Sizes.s18),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Stack(children: [
                CircleAvatar(
                        radius: 10,
                        backgroundImage:
                            AssetImage("imagesAssets/images/p2.jpeg"))
                    .padding(left: 30),
                CircleAvatar(
                        radius: 10,
                        backgroundImage:
                            AssetImage("imagesAssets/images/p2.jpeg"))
                    .padding(left: 40),
                CircleAvatar(
                        radius: 10,
                        backgroundImage:
                            AssetImage("imagesAssets/images/p2.jpeg"))
                    .padding(left: 20),
              ]),
              HSpace(Insets.i8),
              Text(
                "28 followers",
                style: TextStyle(color: Color(0xff616161)),
              ),
              HSpace(Insets.i8),
              SvgPicture.asset("imagesAssets/svg/Ellip.svg"),
              HSpace(Insets.i8),
              Text(
                "youtube.be/tOdDx0G_o8c",
                style: TextStyle(color: Color(0xff616161)),
              ),
            ],
          ),
          SizedBox(height: 30),
          Row(
            children: [
              HSpace(Insets.i10),
              Container(
                alignment: Alignment.center,
                height: 40,
                width: 190,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xff323232))),
                child:
                    Text("Edit profile", style: TextStyle(color: Colors.white)),
              ),
              HSpace(Insets.i10),
              Container(
                alignment: Alignment.center,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xff323232))),
                width: 190,
                child: Text("Share profile",
                    style: TextStyle(color: Colors.white)),
              )
            ],
          ),
          SizedBox(height: 30),
          DefaultTabController(
            length: allTabs.length,
            child: Column(
              children: [
                TabBar(
                    indicatorColor: Colors.white,
                    labelColor: Colors.white,
                    labelStyle: const TextStyle(fontSize: 13),
                    unselectedLabelColor: Colors.white,
                    tabs: tabList),
                SizedBox(
                  height: 485,
                  child: TabBarView(children: allTabs),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
