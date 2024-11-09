import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sesi44/controller/feed_controller.dart';
import 'package:sesi44/view/feedcard.dart';

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
      appBar: AppBar(title: const Text('Instigrim', style: 
      TextStyle(fontWeight: FontWeight.bold,),),),

      
    body: RefreshIndicator(
      onRefresh: ()async{
        await Future.delayed(Duration(seconds: 1));
        controller.refresh();
      },
      child: ListView.builder(
        itemCount: controller.length,
        itemBuilder: (context, index) => FeedCard(
          feed: controller.feed(index),
          ), 
        ),
    ),
    );
  }
}
                                                                                                                                                                                                              