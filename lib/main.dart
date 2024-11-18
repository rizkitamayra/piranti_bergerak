import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:provider/provider.dart';
import 'package:sesi44/controller/feed_controller.dart';
import 'package:sesi44/view/home_page.dart';
=======
import 'package:test4/view/home_page.dart';
>>>>>>> edc4c3625c05c88821f110ddfce3904683f2f3c6

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => FeedController(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'rIstagram',
        theme: ThemeData(
      
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
          useMaterial3: true,
        ),
        home: const HomePage(),
      ),
=======
    return MaterialApp(
      title: 'riskita',
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
>>>>>>> edc4c3625c05c88821f110ddfce3904683f2f3c6
    );
  }
}

