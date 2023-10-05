import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fswitch_nullsafety/fswitch_nullsafety.dart';

class PrivacyScreen extends StatefulWidget {
  const PrivacyScreen({Key? key}) : super(key: key);

  @override
  _PrivacyScreenState createState() => _PrivacyScreenState();
}

class _PrivacyScreenState extends State<PrivacyScreen> {
  List<String> icons = [
    "imagesAssets/svg/privateprofile.svg",
    "imagesAssets/svg/Mentions.svg",
    "imagesAssets/svg/Muted.svg",
    "imagesAssets/svg/Mutedeye.svg",
    "imagesAssets/svg/Profileyoufollow.svg",
  ];
  List<String> iconsName = [
    "Private profile",
    "Mentions",
    "Muted",
    "Hidden words",
    "Profiles you follow",
  ];
  List<Widget> iconSimple = [
    FSwitch(
      openColor: Colors.white,
      sliderColor: Color(0xff101010),
      shadowColor: Color(0xff313133),
      color: Color(0xff313133),
      width: 65.0,
      height: 35.538,
      onChanged: (v) {},
    ),
    Icon(
      Icons.keyboard_arrow_right,
      color: Color(0xff616161),
    ),
    Icon(
      Icons.keyboard_arrow_right,
      color: Color(0xff616161),
    ),
    Icon(
      Icons.keyboard_arrow_right,
      color: Color(0xff616161),
    ),
    Icon(
      Icons.keyboard_arrow_right,
      color: Color(0xff616161),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: BackButton(),
        backgroundColor: Colors.black,
        title: Text("Privacy"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 280,
            child: ListView.builder(
              itemCount: iconsName.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: SvgPicture.asset(icons[index], height: 25),
                  title: Text(
                    iconsName[index],
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: iconSimple[index],
                );
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Color(0xff323232))),
            ),
          ),
          ListTile(
            title: Text(
              "Other privacy settings",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Text(
            """Some settings, such as restrict, apply to both 
Threads and Instagram and can be managed on
Instagram.""",
            style: TextStyle(color: Color(0xff5f5f5f)),
          ),
          ListTile(
            title: Text(
              "Blocked profiles",
              style: TextStyle(color: Colors.white),
            ),
            trailing: SvgPicture.asset("imagesAssets/svg/openweb.svg", height: 20),
            leading: SvgPicture.asset("imagesAssets/svg/Blockedprofiles.svg", height: 25),
          ),
          ListTile(
            title: Text(
              "Hide likes",
              style: TextStyle(color: Colors.white),
            ),
            trailing: SvgPicture.asset("imagesAssets/svg/openweb.svg", height: 20),
            leading: SvgPicture.asset("imagesAssets/svg/hidelike.svg", height: 25),
          ),
        ],
      ),
    );
  }
}
