import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class custom_icon extends StatelessWidget {
  const custom_icon({Key? key, required this.child, required this.isCameraPage})
      : super(key: key);
  final Widget child;
  final bool isCameraPage;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: isCameraPage ? Colors.black.withOpacity(0.4) : Color(0xffE9EDF0),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: child,
      ),
    );
  }
}
