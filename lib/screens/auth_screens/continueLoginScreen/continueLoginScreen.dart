import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:threadsapp/common/config.dart';
import 'package:threadsapp/common/theme/app_css.dart';
import 'package:threadsapp/extensions/extensions/spacing.dart';
import 'package:threadsapp/extensions/extensions/text_style_extensions.dart';
import 'package:threadsapp/extensions/extensions/widget_extension.dart';
import 'package:threadsapp/routes/index.dart';
import 'package:threadsapp/screens/auth_screens/loginRequestScreen/loginRequestScreen.dart';

class ContinueLoginScreen extends StatefulWidget {
  const ContinueLoginScreen({Key? key}) : super(key: key);

  @override
  State<ContinueLoginScreen> createState() => _ContinueLoginScreenState();
}

class _ContinueLoginScreenState extends State<ContinueLoginScreen> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SvgPicture.asset(svgAssets.pattern),
          Container(
            width: Insets.i380,
            height: Insets.i88,
            decoration: BoxDecoration(
              color: const Color(0xff393939),
              borderRadius: BorderRadius.circular(Insets.i25),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Log in with Instagram",
                          style: AppCss.tenorSans
                              .textColor(const Color(0xffb2b3b2)),
                        ),
                      ],
                    ),
                    const VSpace(Insets.i12),
                    Row(
                      children: [
                        Text(
                          "ajay_hariyani_24",
                          style: AppCss.tenorSans.textColor(Colors.white),
                        ),
                        const HSpace(Insets.i30),
                      ],
                    ),
                  ],
                ),
                const HSpace(Insets.i130),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(svgAssets.instagram),
                  ],
                ),
              ],
            ),
          ).inkWell(onTap: () {
            setState(() {
              isLoading = true;
              Future.delayed(const Duration(seconds: 3)).then((value) {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return LoginRequest();
                  },
                ));
              });
            });
          }),
          const VSpace(Insets.i20),
          TextButton(
            onPressed: () => Get.offAllNamed(routeName.switchAccountScreen),
            child: Text(
              "Switch accounts",
              style:
                  AppCss.tenorSansRegular14.textColor(const Color(0xff999999)),
            ),
          ),
        ],
      ),
    );
  }
}
