import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // CustomRefreshIndicator(
      //   completeStateDuration: Duration(seconds: 2),
      //   builder: MaterialIndicatorDelegate(
      //     builder: (context, controller) {
      //       return Lottie.asset("imagesAssets/lotties/threads.json");
      //     },
      //   ),
      //   onRefresh: myAsyncRefreshFunction,
      //   child: ListView.builder(
      //     itemBuilder: (context, index) {
      //       return ListTile(
      //         title: Text("hello1"),
      //       );
      //     },
      //   ),
      // ),
    );
  }
}
