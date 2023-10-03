import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'dart:core';

import 'package:snapchat_clone/Widgets/Style.dart';

class Stories extends StatelessWidget {
  final List<String> name = [
    'Saad',
    'Asad',
    'Ramish',
    'Sana',
    'Mahnoor',
    'Fatima',
    'Ali',
    'Fahad',
    'Aman',
    'Abdullah',
    'Slaar',
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> children = List.generate(
      name.length,
      (index) => Column(
        children: [
          StoryItem(index: index),
          Text(name[index]),
        ],
      ),
    );
    children.insert(
        0,
        const SizedBox(
          width: 10,
        ));
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Row(
        children: children,
      ),
    );
  }
}

class StoryItem extends StatelessWidget {
  final int index;

  StoryItem({required this.index});
  final List<Color> color = [
    Colors.grey,
    Colors.purple,
    Colors.black,
    Colors.blue,
    Colors.yellow,
    Colors.pink,
    Colors.green,
    Colors.amber,
    Colors.lightGreenAccent,
    Colors.orange,
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 75,
            height: 75,
            decoration: BoxDecoration(
              color: Color(0xffCC4BFA),
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          Container(
            width: 71,
            height: 71,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          Container(
            width: 67,
            height: 67,
            decoration: BoxDecoration(
              color: color[index % color.length],
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ],
      ),
    );
  }
}

class Subscription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Row(
        children: [
          Row(
            children: List.generate(
              Article.subscriptions.length,
              (index) => Sub_widget(
                index: index,
                title: Article.subscriptions[index].name,
                description: Article.subscriptions[index].description,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Sub_widget extends StatelessWidget {
  Sub_widget(
      {Key? key,
      required this.index,
      required this.title,
      required this.description})
      : super(key: key);
  final int index;
  final String title;
  final String description;

  final List<Color> color = [
    Colors.green,
    Colors.amber,
    Colors.lightGreenAccent,
    Colors.orange,
    Colors.grey,
    Colors.purple,
    Colors.black,
    Colors.blue,
    Colors.yellow,
    Colors.pink,
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width / 3.5;
    final height = width * 1.5;
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: color[index % color.length]),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Style.subscriptionTitle(title),
              const Spacer(),
              Style.subscriptionDesc(description),
            ],
          ),
        ),
      ),
    );
  }
}

class Article {
  Article({
    required this.name,
    required this.description,
  });
  final String name;
  final String description;
  static List<Article> subscriptions = [
    Article(
      name: 'The News',
      description:
          'Opinion | Last week, the Election Commission of Pakistan (ECP) announced ...',
    ),
    Article(
      name: 'American News',
      description:
          'The most influential news source in the world is the New York Times. ',
    ),
    Article(
      name: 'Watch',
      description: 'Ethiopia addressed the United Nations,',
    ),
    Article(
      name: 'Tv',
      description:
          'Sheikh Ahmad Nawaf Al-Ahmad Al-Sabah, the Prime Minister of Kuwait',
    ),
    Article(
      name: 'Information',
      description: "Malta's commitment to diplomacy, reducing inequalities",
    ),
  ];
  static List<Article> discovers = [
    Article(
      name: 'DEVELOPMENT',
      description: 'Nauru’s President commends UNGA for global unity efforts',
    ),
    Article(
      name: 'TECHNOLOGIES',
      description:
          'Indonesia calls for global solidarity and trust in UNGA speech',
    ),
    Article(
      name: 'News',
      description:
          'Ethiopia urges global partnership and shared prosperity at UN',
    ),
    Article(
      name: 'TECH',
      description: 'UN’s plan to harness AI for global good',
    ),
    Article(
      name: 'Asian News',
      description:
          'Thailand’s vision for equality, democracy, and green initiatives',
    ),
    Article(
      name: 'Bangla Tv',
      description:
          'PM Sheikh Hasina of Bangladesh has delivered a powerful speech...',
    ),
    Article(
      name: 'News',
      description: 'National digital IDs to be improved and serviced by TOTM',
    ),
    Article(
      name: 'Child Safety',
      description:
          'Report finds that more girls than boys are exposed to harmful content online',
    ),
    Article(
      name: 'Cybersecurity Alert ',
      description:
          "Prince Albert II's address at UNGA78 resonates as a call to action",
    ),
    Article(
      name: 'Cybercrime',
      description:
          'All nominated commissioners of the FTC agree that AI regulation is necessary.',
    ),
  ];
}

class Discover extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(10),
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      childAspectRatio: 0.8,
      children: List.generate(
          Article.discovers.length,
          (index) => discover_widget(
                index: index,
                title: Article.discovers[index].name,
                description: Article.discovers[index].description,
              )),
    );
  }
}

class discover_widget extends StatelessWidget {
  discover_widget({
    Key? key,
    required this.index,
    required this.title,
    required this.description,
  }) : super(key: key);
  final int index;
  final String title;
  final String description;
  final List<Color> color = [
    Colors.purple,
    Colors.black,
    Colors.blue,
    Colors.yellow,
    Colors.pink,
    Colors.green,
    Colors.amber,
    Colors.lightGreenAccent,
    Colors.orange,
    Colors.grey,
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color[index % color.length],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Style.discoverTitle(title),
            const Spacer(),
            Style.discoverDesc(description),
          ],
        ),
      ),
    );
  }
}
