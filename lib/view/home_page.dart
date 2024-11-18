<<<<<<< HEAD
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sesi44/controller/feed_controller.dart';
import 'package:sesi44/view/feedcard.dart';
import 'package:sesi44/view/feed_bookmark_page.dart'; // Pastikan ini ada
=======
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:test4/controller/feed_controller.dart';
=======
>>>>>>> 3772646adf1323b244941bc737aecbe8be05ab8e
import 'package:test4/view/feed_card.dart';
>>>>>>> edc4c3625c05c88821f110ddfce3904683f2f3c6

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
<<<<<<< HEAD
  @override
  Widget build(BuildContext context) {
    final controller = context.watch<FeedController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ristagram',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: const Icon(Icons.menu),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const FeedBookmarkPage(),
                ),
              );
            },
            icon: const Icon(Icons.bookmark_outline),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await Future.delayed(const Duration(seconds: 1));
          controller.refresh();
        },
        child: ListView.builder(
          itemCount: controller.length, // Pastikan controller memiliki length
          itemBuilder: (context, index) => FeedCard(
            feed: controller.feed(index),
          ),
        ),
      ),
    );
  }
}
=======
<<<<<<< HEAD
  get feedController => null;

  @override
  Widget build(BuildContext context) {
    var feedController = FeedController();
    return Scaffold(
      appBar: AppBar(title: const Text(
        'Instagram',
         style: TextStyle(fontWeight: FontWeight.w600),
         ),
         ),
   body: ListView.builder(
    itemCount: feedController.feeds.length,
    itemBuilder: (context, index) => FeedCard(
      feed: feedController.feeds[index],
      ),
   ),
   );
=======
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
 
>>>>>>> 3772646adf1323b244941bc737aecbe8be05ab8e
  }
}

>>>>>>> edc4c3625c05c88821f110ddfce3904683f2f3c6
