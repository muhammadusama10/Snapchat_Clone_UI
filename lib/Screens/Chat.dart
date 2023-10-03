import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snapchat_clone/Widgets/appbar_widget.dart';
import 'package:snapchat_clone/Widgets/chat_resource.dart';
import 'package:snapchat_clone/Widgets/chat_widget.dart';

class Chat_Screen extends StatefulWidget {
  @override
  State<Chat_Screen> createState() => _Chat_ScreenState();
}

class _Chat_ScreenState extends State<Chat_Screen> {
  @override
  Widget build(BuildContext context) {
    List<Widget> friends = Friend.friends.map((friend) {
      return Column(
        children: [
          chat_widget(friend: friend),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 20,
            color: Colors.white,
            child: const Divider(
              color: Color(0xff8f8f8f),
              thickness: 0.3,
            ),
          ),
        ],
      );
    }).toList();
    friends.add(Column(
      children: [
        SizedBox(height: Platform.isAndroid ? 80 : 50),
      ],
    ));
    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          const topbar(
            iscamerapage: false,
            isvideopage: false,
            ismapscreen: false,
            text: "Chat",
          ),
          Positioned(
            top: 100,
            height: MediaQuery.of(context).size.height - 100,
            child: Stack(children: [
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    stops: [1.0, 0.0],
                    begin: Alignment.topCenter,
                    end: Alignment.center,
                    colors: [
                      Colors.yellow,
                      Colors.white,
                    ], // Change colors as needed
                  ),
                ),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: friends,
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
