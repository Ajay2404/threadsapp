import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:threadsapp/extensions/extensions/widget_extension.dart';

class ThreadsPage extends StatefulWidget {
  const ThreadsPage({super.key});

  @override
  State<ThreadsPage> createState() => _ThreadsPageState();
}

class _ThreadsPageState extends State<ThreadsPage> {
  bool isLike = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(children: [
        const SizedBox(height: 10),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 70, left: 10),
              alignment: Alignment.topCenter,
              child: const CircleAvatar(
                backgroundImage: AssetImage("imagesAssets/images/p1.jpeg"),
              ),
            ),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      "ajay_hariyani_24",
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(width: 170),
                    const Text("1d",
                        style: TextStyle(color: Color(0xff616161))),
                    const SizedBox(width: 15),
                    SvgPicture.asset("imagesAssets/svg/Option.svg", height: 5)
                        .inkWell(
                      onTap: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          backgroundColor: const Color(0xFF191919),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.only(
                              topEnd: Radius.circular(25),
                              topStart: Radius.circular(25),
                            ),
                          ),
                          builder: (context) => SingleChildScrollView(
                            padding: const EdgeInsetsDirectional.only(
                              start: 20,
                              end: 20,
                              bottom: 30,
                              top: 8,
                            ),
                            child: Wrap(
                              children: [
                                const SizedBox(height: 30),
                                Center(
                                  child: Container(
                                      height: 3,
                                      width: 50,
                                      decoration: const BoxDecoration(
                                          color: Color(0xff616161),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)))),
                                ),
                                const SizedBox(height: 20),
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const ListTile(
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
                                      const ListTile(
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
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      ListTile(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          title: const Text("Delete",
                                              style:
                                                  TextStyle(color: Colors.red)),
                                          tileColor: const Color(0xff616161)),
                                    ]),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  """Should’ve had an option to import all my tweets 
to threads""",
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 10),
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
                    const SizedBox(width: 15),
                    SvgPicture.asset("imagesAssets/svg/Comment.svg", height: 20)
                        .inkWell(
                      onTap: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          backgroundColor: const Color(0xFF191919),
                          builder: (context) => SingleChildScrollView(
                            child: Wrap(
                              children: [
                                const SizedBox(),
                                Container(
                                  alignment: Alignment.topCenter,
                                  height: 400,
                                  child: Row(
                                    children: [
                                      const Icon(Icons.close,
                                              color: Colors.white, size: 30)
                                          .inkWell(
                                        onTap: () => Navigator.pop(context),
                                      ),
                                      const SizedBox(width: 20),
                                      const Text(
                                        "Reply",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Container(
                                    decoration: const BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Color(0xff616161))))),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(width: 15),
                    SvgPicture.asset("imagesAssets/svg/Repost.svg", height: 20)
                        .inkWell(
                      onTap: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          backgroundColor: const Color(0xFF191919),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.only(
                              topEnd: Radius.circular(25),
                              topStart: Radius.circular(25),
                            ),
                          ),
                          builder: (context) => SingleChildScrollView(
                            padding: const EdgeInsetsDirectional.only(
                              start: 20,
                              end: 20,
                              bottom: 30,
                              top: 8,
                            ),
                            child: Wrap(
                              children: [
                                const SizedBox(height: 30),
                                Center(
                                  child: Container(
                                      height: 3,
                                      width: 50,
                                      decoration: const BoxDecoration(
                                          color: Color(0xff616161),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)))),
                                ),
                                const SizedBox(height: 20),
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
                                          title: const Text("Repost",
                                              style: TextStyle(
                                                  color: Colors.white)),
                                          tileColor: const Color(0xff616161)),
                                      const SizedBox(height: 10),
                                      ListTile(
                                          trailing: const Icon(Icons.comment,
                                              color: Colors.white),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          title: const Text(
                                            "Quote",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          tileColor: const Color(0xff616161)),
                                    ]),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(width: 15),
                    SvgPicture.asset("imagesAssets/svg/Share.svg", height: 20)
                        .inkWell(
                      onTap: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          backgroundColor: const Color(0xFF191919),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.only(
                              topEnd: Radius.circular(25),
                              topStart: Radius.circular(25),
                            ),
                          ),
                          builder: (context) => SingleChildScrollView(
                            padding: const EdgeInsetsDirectional.only(
                              start: 20,
                              end: 20,
                              bottom: 30,
                              top: 8,
                            ),
                            child: Wrap(
                              children: [
                                const SizedBox(height: 30),
                                Center(
                                  child: Container(
                                      height: 3,
                                      width: 50,
                                      decoration: const BoxDecoration(
                                          color: Color(0xff616161),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)))),
                                ),
                                const SizedBox(height: 20),
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const ListTile(
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
                                          shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                  bottomRight:
                                                      Radius.circular(10),
                                                  bottomLeft:
                                                      Radius.circular(10))),
                                          title: const Text(
                                            "Post to feed",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          tileColor: const Color(0xff616161)),
                                      const SizedBox(height: 20),
                                      const ListTile(
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
                                      const ListTile(
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
                const SizedBox(height: 10),
                const Text("1 like",
                    style: TextStyle(color: Color(0xff616161))),
              ],
            ),
          ],
        ),
      ]),
    );
  }
}
