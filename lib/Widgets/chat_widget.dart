import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snapchat_clone/Widgets/Style.dart';
import 'package:snapchat_clone/Widgets/chat_resource.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class chat_widget extends StatelessWidget {
  const chat_widget({Key? key, required this.friend}) : super(key: key);
  final Friend friend;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
            ),
            child: Image.asset(friend.image),
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 5),
              Style.friendName(friend.name),
              Row(
                children: [
                  Friend.statusIconMap[friend.status]!,
                  const SizedBox(
                    width: 7,
                  ),
                  Style.chatInfo(
                    "${Friend.statusTextMap[friend.status]!} ",
                  ),
                  const SizedBox(
                    width: 11,
                    child: Center(
                      child: Text(
                        '.',
                        style: TextStyle(
                          color: Color(0xff8f8f8f),
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  Style.chatInfo(
                    "${friend.time}",
                  ),
                  if (friend.streak > 1)
                    const SizedBox(
                      width: 11,
                      child: Center(
                        child: Text(
                          '.',
                          style: TextStyle(
                            color: Color(0xff8f8f8f),
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  if (friend.streak > 1)
                    Style.streakText("${friend.streak.toString()}🔥"),
                ],
              )
            ],
          ),
          const Spacer(),
          VerticalDivider(
            thickness: 0.5,
            color: Color(0xff8f8f8f),
          ),
          const SizedBox(width: 40),
          Transform(
            transform: Matrix4.identity()..scale(-1.0, 1.0),
            child: Icon(
              Icons.chat_bubble_outline_outlined,
              size: 30,
              color: Color(0xff8f8f8f),
            ),
          ),
        ],
      ),
    );
  }
}
