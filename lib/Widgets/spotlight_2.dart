import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snapchat_clone/Widgets/appbar_widget.dart';

class spotlight_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Stack(
        children: [
          topbar(
            iscamerapage: false,
            isvideopage: true,
            ismapscreen: false,
            text: 'Spotlight',
            videoscreenicon: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Image.asset('assets/images/real.png'),
                )),
          ),
          Center(
            child: Text(
              'Spotlight 2',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 110.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Column(
                        children: [
                          Icon(
                            Icons.bookmark_add_rounded,
                            size: 30,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0, top: 10),
                      child: Column(
                        children: [
                          Icon(
                            Icons.favorite,
                            size: 30,
                            color: Colors.white,
                          ),
                          Text(
                            '10k',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0, top: 10),
                      child: Column(
                        children: [
                          Icon(
                            Icons.chat_bubble_rounded,
                            size: 30,
                            color: Colors.white,
                          ),
                          Text(
                            '1k',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 5.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.play_arrow_rounded,
                                      size: 20,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      '5.5m',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    SizedBox(
                                      width: 110,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 5.0),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 25,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Color(0xff646E7A),
                                      ),
                                      child: Image.asset('assets/images/1.png'),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Muhammad Usama',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0, top: 10),
                      child: Column(
                        children: [
                          Icon(
                            Icons.near_me_rounded,
                            size: 30,
                            color: Colors.white,
                          ),
                          Text(
                            '5k',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 5,
                          ),
                          child: Container(
                            height: 35,
                            width: 130,
                            decoration: BoxDecoration(
                                color: Color(0xff646E7A).withOpacity(0.4),
                                borderRadius: BorderRadius.circular(7)),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.music_note_rounded,
                                      color: Colors.white,
                                      size: 25,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      'Spotlight Sound',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10, top: 10),
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            color: Color(0xff646E7A).withOpacity(0.4),
                            borderRadius: BorderRadius.circular(100)),
                        child: Icon(
                          Icons.more_horiz,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
