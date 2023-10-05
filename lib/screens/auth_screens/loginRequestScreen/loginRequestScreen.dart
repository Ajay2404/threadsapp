import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:threadsapp/common/theme/app_css.dart';
import 'package:threadsapp/extensions/extensions/spacing.dart';
import 'package:threadsapp/extensions/extensions/text_style_extensions.dart';
import 'package:threadsapp/extensions/extensions/widget_extension.dart';
import 'package:threadsapp/routes/index.dart';

class LoginRequest extends StatefulWidget {
  const LoginRequest({super.key});

  @override
  State<LoginRequest> createState() => _LoginRequestState();
}

class _LoginRequestState extends State<LoginRequest> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(children: [
          const VSpace(Insets.i50),
          Text("Login request sent",
              style: AppCss.tenorSansRegular20.textColor(Colors.white)),
          const VSpace(Insets.i20),
          Text(
                  textAlign: TextAlign.center,
                  style: AppCss.tenorSansRegular14.textColor(Colors.grey),
                  "We've sent a notification to the trusted devices on this account to help you log in")
              .paddingSymmetric(horizontal: 10),
          const VSpace(Insets.i20),
          Text(
                  textAlign: TextAlign.center,
                  style: AppCss.tenorSansRegular14.textColor(Colors.grey),
                  " If you're already logged in on another device, you can open the Instagram app to approve this request.")
              .paddingSymmetric(horizontal: 10),
          const VSpace(Insets.i600),
          Container(
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.white12)))),
          const VSpace(Insets.i20),
          Container(
              alignment: Alignment.center,
              height: 40,
              decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: const Text(
                "Confirm",
                style: TextStyle(color: Colors.white),
              )).paddingSymmetric(horizontal: 20).inkWell(
            onTap: () {
              Get.offNamed(routeName.dashBoardScreen);
            },
          ),
          const VSpace(Insets.i10),
          const Text(
            "Try another way",
            style: TextStyle(color: Colors.blue),
          ).inkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Wrap(
                    children: [
                      const ListTile(
                        tileColor: Colors.black,
                        title: Text('Use WhatsApp login code',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white)),
                      ),
                      const ListTile(
                        tileColor: Colors.black,
                        title: Text('Send Text Message',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white)),
                      ),
                      const ListTile(
                        tileColor: Colors.black,
                        title: Text('Use backup code',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white)),
                      ),
                      const ListTile(
                        tileColor: Colors.black,
                        title: Text('Get Support',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white)),
                      ),
                      const ListTile(
                        tileColor: Colors.black,
                        title: Text('Visit Help Centre',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white)),
                      ),
                      const ListTile(
                        tileColor: Colors.black,
                        title: Text('Cancel',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white)),
                      ).inkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  );
                },
              );
            },
          )
        ]),
      ),
    );
  }
}
