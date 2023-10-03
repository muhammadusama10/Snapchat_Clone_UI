import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'appbar_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class mapwidet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        topbar(
          iscamerapage: false,
          isvideopage: false,
          ismapscreen: true,
          text: 'Snap Map',
          mapscreenicon: Icons.settings,
        ),
        Positioned(
          bottom: 90,
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Center(
                          child: Icon(
                            FontAwesomeIcons.locationArrow,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      btm_widget(
                        text: Text(
                          'My Bitmoji',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 11,
                          ),
                        ),
                        image: Image.asset('assets/images/1.png'),
                        hasOverlayIcon: false,
                      ),
                      btm_widget(
                        hasOverlayIcon: false,
                        text: Text(
                          'Places',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 11,
                          ),
                        ),
                        image: Image.asset('assets/images/places.png'),
                      ),
                      btm_widget(
                        hasOverlayIcon: true,
                        text: Text(
                          'Friends',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 11,
                          ),
                        ),
                        image: Stack(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  height: 24,
                                  width: 22,
                                  child: Image.asset('assets/images/3.png')),
                              Container(
                                  height: 24,
                                  width: 22,
                                  child: Image.asset('assets/images/2.png')),
                            ],
                          ),
                        ]),
                      ),
                    ]),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class btm_widget extends StatelessWidget {
  const btm_widget({
    Key? key,
    required this.text,
    required this.image,
    required this.hasOverlayIcon,
  }) : super(key: key);

  final Text text;
  final Widget image;
  final bool hasOverlayIcon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      child: Stack(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100), color: Colors.white),
            child: Center(
              child: Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Color(0xff646E7A).withOpacity(0.4),
                ),
                child: Center(child: image
                    //Image.asset('assets/images/1.png'),
                    ),
              ),
            ),
          ),
          if (hasOverlayIcon) // Conditionally show the overlay icon
            Positioned(
              bottom: 20,
              child: Container(
                width: 60, // Adjust the size of the overlay icon container
                height: 60, // Adjust the size of the overlay icon container
                child: Center(
                  child: Icon(
                    CupertinoIcons.person_alt,
                    size: 50, // Adjust the size of the overlay icon
                    color: Colors
                        .grey.shade500, // Adjust the color of the overlay icon
                  ),
                ),
              ),
            ),
          Positioned(
            bottom: 10,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 12, right: 12, top: 5, bottom: 5),
                child: text,

                // Text(
                //   'My Bitmoji',
                //   style: TextStyle(
                //     fontSize: 11,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
