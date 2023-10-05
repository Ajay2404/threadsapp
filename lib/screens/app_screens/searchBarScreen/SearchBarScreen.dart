import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

class SearchBarScreen extends StatefulWidget {
  const SearchBarScreen({super.key});

  @override
  State<SearchBarScreen> createState() => _SearchBarScreenState();
}

class _SearchBarScreenState extends State<SearchBarScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(children: [
          Row(
            children: [
              Text(
                "Search",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ).paddingOnly(left: 10),
            ],
          ),
          TextField(
              decoration: InputDecoration(
                  prefixIcon:
                      Icon(Icons.search_rounded, color: Color(0xff616161)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: "Search",
                  hintStyle: TextStyle(color: Color(0xff616161)))),
        ]),
      ),
    );
  }
}
