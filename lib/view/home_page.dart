// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:test4/view/feed_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(
        'Instagram',
         style: TextStyle(fontWeight: FontWeight.w600),),),
   body: ListView(
    children: [
  FeedCard(),
  FeedCard(),
  FeedCard()
    ],
   ),
    );
 
  }
}

