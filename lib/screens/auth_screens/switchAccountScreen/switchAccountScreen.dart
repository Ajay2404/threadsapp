import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:threadsapp/common/config.dart';
import 'package:threadsapp/extensions/extensions/spacing.dart';
import 'package:threadsapp/extensions/extensions/text_style_extensions.dart';
import 'package:threadsapp/extensions/extensions/widget_extension.dart';
import 'package:threadsapp/routes/index.dart';

import '../../../common/theme/app_css.dart';

class SwitchAccountScreen extends StatefulWidget {
  const SwitchAccountScreen({Key? key}) : super(key: key);

  @override
  State<SwitchAccountScreen> createState() => _SwitchAccountScreenState();
}

class _SwitchAccountScreenState extends State<SwitchAccountScreen> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff11222e),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(svgAssets.instagram1, height: 65),
            const VSpace(Insets.i120),
            Container(
              padding: const EdgeInsets.only(left: 20),
              alignment: Alignment.center,
              height: 70,
              width: 370,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: const Color(0xff2a3b46))),
              child: TextField(
                  controller: username,
                  decoration: const InputDecoration(
                      hintStyle: TextStyle(color: Color(0xff53626a)),
                      hintText: "Username,email address or mobile number")),
            ).center(),
            const VSpace(Insets.i10),
            Container(
              padding: const EdgeInsets.only(left: 20),
              alignment: Alignment.center,
              height: 70,
              width: 370,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: const Color(0xff2a3b46))),
              child: TextField(
                  controller: password,
                  decoration: const InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(color: Color(0xff53626a)))),
            ),
            const VSpace(Insets.i10),
            Container(
                width: 370,
                height: 50,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    color: Color(0xff0063e1),
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Text("Log In",
                    style: AppCss.tenorSansRegular18.textColor(Colors.white))),
            const VSpace(Insets.i10),

          ],
        ),
      ),
    );
  }
}
