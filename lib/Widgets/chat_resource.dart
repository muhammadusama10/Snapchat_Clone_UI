import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Friend {
  Friend(this.image, this.name, this.status, this.time, this.streak);
  final String image;
  final String name;
  final int status;
  final String time;
  final int streak;
  static List<Friend> friends = [
    Friend('assets/images/2.png', 'Ali', 0, '2m', 178),
    Friend('assets/images/3.png', 'Sana', 1, '7m', 0),
    Friend('assets/images/4.png', 'Mahnoor', 1, '21m', 134),
    Friend('assets/images/5.png', 'Amna', 9, '1h', 0),
    Friend('assets/images/6.png', 'Izza', 4, '1h', 500),
    Friend('assets/images/1.png', 'Usman', 4, '1h', 95),
    Friend('assets/images/2.png', 'Fahad', 12, '1h', 0),
    Friend('assets/images/4.png', 'Laiba', 3, '2h', 83),
    Friend('assets/images/5.png', 'Hafsa', 3, '5h', 0),
    Friend('assets/images/6.png', 'Mehwish', 14, '6h', 300),
    Friend('assets/images/2.png', 'Zeeshan', 0, '2m', 178),
    Friend('assets/images/3.png', 'Samia', 1, '7m', 0),
    Friend('assets/images/4.png', 'Minahil', 1, '21m', 134),
    Friend('assets/images/5.png', 'Arfa', 9, '1h', 0),
  ];

  static final Map<int, String> statusTextMap = {
    0: 'New Snap',
    1: 'New Snap',
    2: 'New Chat',
    3: 'Received',
    4: 'Received',
    5: 'Received',
    6: 'Delivered',
    7: 'Delivered',
    8: 'Delivered',
    9: 'Opened',
    10: 'Opened',
    11: 'Opened',
    12: 'Call Ended',
    13: 'Calling',
    14: 'Call Missed',
  };

  static final Map<int, Icon> statusIconMap = {
    0: const Icon(CupertinoIcons.square_fill,
        color: Color(0xffF33A57), size: 15),
    1: const Icon(CupertinoIcons.square_fill,
        color: Color(0xffA05DCD), size: 15),
    2: const Icon(Icons.chat_bubble, color: Color(0xff00B6FF), size: 15),
    3: const Icon(CupertinoIcons.square, color: Color(0xffF33A57), size: 15),
    4: const Icon(CupertinoIcons.square, color: Color(0xffA05DCD), size: 15),
    5: const Icon(Icons.chat_bubble_outline,
        color: Color(0xff00B6FF), size: 15),
    6: const Icon(Icons.send_rounded, color: Color(0xffF33A57), size: 15),
    7: const Icon(Icons.send_rounded, color: Color(0xffA05DCD), size: 15),
    8: const Icon(Icons.send_rounded, color: Color(0xff00B6FF), size: 15),
    9: const Icon(Icons.send_outlined, color: Color(0xffF33A57), size: 15),
    10: const Icon(Icons.send_outlined, color: Color(0xffA05DCD), size: 15),
    11: const Icon(Icons.send_outlined, color: Color(0xff00B6FF), size: 15),
    12: const Icon(Icons.call_end_rounded, color: Color(0xff00B6FF), size: 15),
    13: const Icon(Icons.call, color: Color(0xff00B6FF), size: 15),
    14: const Icon(Icons.call_missed, color: Color(0xff00B6FF), size: 15),
  };
}
