import 'package:flutter/material.dart';

class Style {
  static Text screenTitle(String text) => Text(
        text,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      );
  static Text title(String text) => Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      );
  static Text friendsname(String text) => Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      );
  static Text subscriptionTitle(String text) => Text(
        text,
        overflow: TextOverflow.ellipsis,
        maxLines: 3,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 12,
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      );

  static Text subscriptionDesc(String text) => Text(
        text,
        overflow: TextOverflow.ellipsis,
        maxLines: 4,
        style: const TextStyle(
          fontSize: 13,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      );
  static Text discoverTitle(String text) => Text(
        text,
        overflow: TextOverflow.ellipsis,
        maxLines: 3,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      );

  static Text discoverDesc(String text) => Text(
        text,
        overflow: TextOverflow.ellipsis,
        maxLines: 4,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      );
  static Text friendName(String text) => Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.black,
        ),
      );
  static Text chatInfo(String text) => Text(
        text,
        style: const TextStyle(
          fontSize: 14,
          color: Color(0xff8f8f8f),
        ),
      );

  static Text streakText(String text) => Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.black,
        ),
      );
}
