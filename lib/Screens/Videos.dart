import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snapchat_clone/Widgets/Video_widget.dart';
import 'package:snapchat_clone/Widgets/appbar_widget.dart';
import 'dart:ui';

import 'package:snapchat_clone/Widgets/spotlight_2.dart';

class Video_Screen extends StatelessWidget {
  final pgview = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
          physics: BouncingScrollPhysics(),
          controller: pgview,
          scrollDirection: Axis.vertical,
          children: [
            video_widget(),
            spotlight_2(),
          ]),
    );
  }
}
