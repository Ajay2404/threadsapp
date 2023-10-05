import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:threadsapp/extensions/extensions/widget_extension.dart';

class RepliesPage extends StatefulWidget {
  const RepliesPage({super.key});

  @override
  State<RepliesPage> createState() => _RepliesPageState();
}

class _RepliesPageState extends State<RepliesPage> {
  bool isLike = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(children: [
        SizedBox(height: 10),
        Row(
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 420, left: 10),
              alignment: Alignment.topCenter,
              child: CircleAvatar(
                backgroundImage: AssetImage("imagesAssets/images/p2.jpeg"),
              ),
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "DarshanRavalDz",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: 170),
                    Text("1d", style: TextStyle(color: Color(0xff616161))),
                    SizedBox(width: 15),
                    SvgPicture.asset("imagesAssets/svg/Option.svg", height: 5)
                        .inkWell(
                      onTap: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          backgroundColor: Color(0xFF191919),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.only(
                              topEnd: Radius.circular(25),
                              topStart: Radius.circular(25),
                            ),
                          ),
                          builder: (context) => SingleChildScrollView(
                            padding: EdgeInsetsDirectional.only(
                              start: 20,
                              end: 20,
                              bottom: 30,
                              top: 8,
                            ),
                            child: Wrap(
                              children: [
                                SizedBox(height: 30),
                                Center(
                                  child: Container(
                                      height: 3,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: Color(0xff616161),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)))),
                                ),
                                SizedBox(height: 20),
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      ListTile(
                                          trailing: Icon(
                                              Icons.keyboard_arrow_right,
                                              color: Colors.grey),
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  topRight:
                                                      Radius.circular(10))),
                                          title: Text("Who can reply",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                          tileColor: Color(0xff616161)),
                                      ListTile(
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                  bottomRight:
                                                      Radius.circular(10),
                                                  bottomLeft:
                                                      Radius.circular(10))),
                                          title: Text(
                                            "Hide like count",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          tileColor: Color(0xff616161)),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      ListTile(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          title: Text("Delete",
                                              style:
                                                  TextStyle(color: Colors.red)),
                                          tileColor: Color(0xff616161)),
                                    ]),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  "Drop one of your favourite sunset shots.",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 10),
                Image.asset(
                  "imagesAssets/images/p10.webp",
                  height: 360,
                  width: 300,
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          isLike = true;
                        });
                      },
                      child: SvgPicture.asset(
                          isLike
                              ? "imagesAssets/svg/likeicon.svg"
                              : "imagesAssets/svg/redlike.svg",
                          height: 20),
                    ),
                    SizedBox(width: 15),
                    SvgPicture.asset("imagesAssets/svg/Comment.svg",
                        height: 20),
                    SizedBox(width: 15),
                    SvgPicture.asset("imagesAssets/svg/Repost.svg", height: 20)
                        .inkWell(
                      onTap: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          backgroundColor: Color(0xFF191919),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.only(
                              topEnd: Radius.circular(25),
                              topStart: Radius.circular(25),
                            ),
                          ),
                          builder: (context) => SingleChildScrollView(
                            padding: EdgeInsetsDirectional.only(
                              start: 20,
                              end: 20,
                              bottom: 30,
                              top: 8,
                            ),
                            child: Wrap(
                              children: [
                                SizedBox(height: 30),
                                Center(
                                  child: Container(
                                      height: 3,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: Color(0xff616161),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)))),
                                ),
                                SizedBox(height: 20),
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      ListTile(
                                          trailing: SvgPicture.asset(
                                              height: 20,
                                              "imagesAssets/svg/Repost.svg"),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          title: Text("Repost",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                          tileColor: Color(0xff616161)),
                                      SizedBox(height: 10),
                                      ListTile(
                                          trailing: Icon(Icons.comment,
                                              color: Colors.white),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          title: Text(
                                            "Quote",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          tileColor: Color(0xff616161)),
                                    ]),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                    SizedBox(width: 15),
                    SvgPicture.asset("imagesAssets/svg/Share.svg", height: 20)
                        .inkWell(
                      onTap: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          backgroundColor: Color(0xFF191919),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.only(
                              topEnd: Radius.circular(25),
                              topStart: Radius.circular(25),
                            ),
                          ),
                          builder: (context) => SingleChildScrollView(
                            padding: EdgeInsetsDirectional.only(
                              start: 20,
                              end: 20,
                              bottom: 30,
                              top: 8,
                            ),
                            child: Wrap(
                              children: [
                                SizedBox(height: 30),
                                Center(
                                  child: Container(
                                      height: 3,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: Color(0xff616161),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)))),
                                ),
                                SizedBox(height: 20),
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      ListTile(
                                          trailing: Icon(
                                              Icons.add_circle_outline,
                                              color: Colors.white),
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(10),
                                                  topLeft:
                                                      Radius.circular(10))),
                                          title: Text("Add to story",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                          tileColor: Color(0xff616161)),
                                      ListTile(
                                          trailing: SvgPicture.asset(
                                              height: 20,
                                              "imagesAssets/svg/Instagramicon.svg"),
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                  bottomRight:
                                                      Radius.circular(10),
                                                  bottomLeft:
                                                      Radius.circular(10))),
                                          title: Text(
                                            "Post to feed",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          tileColor: Color(0xff616161)),
                                      SizedBox(height: 20),
                                      ListTile(
                                          trailing: Icon(Icons.link,
                                              color: Colors.white),
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(10),
                                                  topLeft:
                                                      Radius.circular(10))),
                                          title: Text("Copy link",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                          tileColor: Color(0xff616161)),
                                      ListTile(
                                          trailing: Icon(Icons.ios_share,
                                              color: Colors.white),
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                  bottomRight:
                                                      Radius.circular(10),
                                                  bottomLeft:
                                                      Radius.circular(10))),
                                          title: Text(
                                            "Share via...",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          tileColor: Color(0xff616161)),
                                    ]),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text("2k like", style: TextStyle(color: Color(0xff616161))),
              ],
            ),
          ],
        ),
      ]),
    );
  }
}
