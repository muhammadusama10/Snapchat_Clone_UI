import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snapchat_clone/Widgets/Style.dart';
import 'package:snapchat_clone/Widgets/appbar_widget.dart';
import 'package:snapchat_clone/Widgets/dicover_screen_wdgets.dart';
import 'dart:io';
import 'package:universal_platform/universal_platform.dart';

class Discover_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const topbar(
          iscamerapage: false,
          isvideopage: false,
          ismapscreen: false,
          text: "Stories",
        ),
        Positioned(
          top: 100,
          right: 0,
          left: 0,
          height: MediaQuery.of(context).size.height -
              100 -
              (Platform.isAndroid ? 98 : 60),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Style.title('Friends'),
                ),
                Stories(),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Style.title('Subscription'),
                ),
                Subscription(),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Style.title('Discover'),
                ),
                Discover(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
