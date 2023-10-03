import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snapchat_clone/Widgets/Custom_Icon.dart';
import 'package:snapchat_clone/Widgets/appbar_widget.dart';

class Camera_Screen extends StatefulWidget {
  const Camera_Screen({
    Key? key,
    required this.cameraController,
    required this.initCamera,
  }) : super(key: key);
  final CameraController? cameraController;
  final Future<void> Function({required bool frontCamera}) initCamera;
  @override
  State<Camera_Screen> createState() => _Camera_ScreenState();
}

class _Camera_ScreenState extends State<Camera_Screen> {
  bool _isfrontCamera = true;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        widget.cameraController == null
            ? Container(
                color: Colors.blue,
              )
            : Builder(builder: (BuildContext builder) {
                var camera = widget.cameraController!.value;
                final fullSize = MediaQuery.of(context).size;
                final size = Size(fullSize.width,
                    fullSize.height - (Platform.isAndroid ? 90 : 60));
                double scale;
                try {
                  scale = size.aspectRatio * camera.aspectRatio;
                } catch (e) {
                  scale = 1.0;
                }
                if (scale < 1) scale = 1 / scale;
                return ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Transform.scale(
                      scale: scale,
                      child: Center(
                        child: LimitedBox(
                          maxWidth: size.width,
                          child: CameraPreview(widget.cameraController!),
                        ),
                      )),
                );
              }),
        const topbar(
          iscamerapage: true,
          ismapscreen: false,
          isvideopage: false,
        ),
        Positioned(
          bottom: 115,
          child: Row(
            children: [
              custom_icon(
                child: Icon(
                  Icons.photo_library_outlined,
                  size: 26,
                  color: Colors.white,
                ),
                isCameraPage: true,
              ),
              SizedBox(
                width: 18,
              ),
              Image.asset(
                'assets/images/img.png',
                scale: 4.3,
              ),
              SizedBox(
                width: 18,
              ),
              custom_icon(
                child: Icon(
                  Icons.photo_library_outlined,
                  size: 26,
                  color: Colors.white,
                ),
                isCameraPage: true,
              ),
            ],
          ),
        )
      ],
    );
  }
}
