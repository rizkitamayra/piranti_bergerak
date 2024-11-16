import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sesi44/controller/feed_controller.dart';
import 'package:sesi44/view/feedcard.dart';
import 'package:sesi44/view/feed_bookmark_page.dart'; // Pastikan ini ada

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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