import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:snapchat_clone/Widgets/Custom_Icon.dart';
import 'package:snapchat_clone/Widgets/Style.dart';

class topbar extends StatelessWidget {
  const topbar({
    Key? key,
    required this.iscamerapage,
    this.text,
    required this.isvideopage,
    Widget? videoscreenicon,
    required this.ismapscreen,
    this.mapscreenicon,
  })  : _videoscreenicon = videoscreenicon,
        super(key: key);
  final bool iscamerapage;
  final bool isvideopage;
  final bool ismapscreen;
  final String? text;
  final Widget? _videoscreenicon;
  final IconData? mapscreenicon;
  @override
  Widget build(BuildContext context) {
    Color color = iscamerapage ? Colors.white : Color(0xff646E7A);
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          top: 40,
          left: 10,
          child: custom_icon(
            child: Image.asset('assets/images/1.png'),
            isCameraPage: iscamerapage,
          ),
        ),
        Positioned(
            top: 40,
            left: 65,
            child: custom_icon(
              child: Icon(
                Icons.search,
                color: color,
                size: 30,
              ),
              isCameraPage: iscamerapage,
            )),
        if (!isvideopage)
          Positioned(
            top: 40,
            right: 67,
            child: custom_icon(
              child: Icon(
                Icons.person_add,
                color: color,
                size: 28,
              ),
              isCameraPage: iscamerapage,
            ),
          ),
        Positioned(
          top: 40,
          right: 12,
          child: iscamerapage
              ? Container(
                  width: 47,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Icon(
                        Icons.flip_camera_android,
                        size: 28,
                        color: color,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Icon(
                        Icons.flash_off,
                        size: 28,
                        color: color,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Icon(
                        CupertinoIcons.moon,
                        size: 28,
                        color: color,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Icon(
                        CupertinoIcons.play_rectangle,
                        size: 28,
                        color: color,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 28,
                          color: color,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                )
              : custom_icon(
                  child: ismapscreen
                      ? Icon(
                          mapscreenicon,
                          color: color,
                          size: 30,
                        )
                      : _videoscreenicon ??
                          Icon(
                            Icons.more_horiz,
                            color: color,
                            size: 30,
                          ),
                  isCameraPage: false),
        ),
        if (text != null)
          Positioned(
            top: 50,
            child: Style.screenTitle(text!),
          ),
      ],
    );
  }
}
