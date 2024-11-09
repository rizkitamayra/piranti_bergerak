import 'package:flutter/material.dart';
import 'package:sesi44/model/feed.dart';
import 'package:sesi44/model/feed_repository.dart';

class FeedController extends ChangeNotifier {
  List<Feed> feeds = FeedRepository().fetch();
  int get length => feeds.length;

  Feed feed(int index){
    return feeds[index];
  }

  like(Feed feed){
    feeds
    .firstWhere(
      (Element) => Element.id == feed.id,
    ).content.isLike = !feed.content.isLike;
    notifyListeners();
  }

 refresh(){
    feeds = FeedRepository().fetch();
    notifyListeners();
  }
} 

  // [
  //   Feed(
  //     user: User(
  //       name: 'Rafi Ahmad', 
  //       avatar: 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRO_-QQfvULpMwmMSJcEBSWo-HmBNtn1XN0Aj1z3-JMY42F3Qys', 
  //       place: 'Istana Negara'
  //       ), 
  //     content: Content(
  //       image: 'https://media.suara.com/pictures/653x366/2023/10/09/60452-keluarga-raffi-ahmad.jpg', 
  //       likes: '1.2890 Likes', 
  //       description: 'Keluargaku'
  //       )),
  //   Feed(
  //     user: User(
  //       name: 'Rafi Ahmad dan Nagita Slavina', 
  //       avatar: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4PonNbE4LBqFPdb4pwEbtItm4ECyEY3tRBdQgT96VbQ8m3NSWc5vf-8ovoZodeTKKiMU&usqp=CAU', 
  //       place: 'Andara'
  //       ), 
  //     content: Content(
  //       image: 'https://akcdn.detik.net.id/visual/2022/10/24/raffi-ahmad_43.jpeg?w=650&q=90', 
  //       likes: '5.2890 Likes', 
  //       description: 'Akuu ini'
  //       )),
  //   Feed(
  //     user: User(
  //       name: 'Rafatar', 
  //       avatar: 'https://i1.wp.com/risetcdn.jatimtimes.com/images/2022/08/15/Rafathar-Malik-Ahmad-Pa689bbb24283e127.md.jpg?quality=50', 
  //       place: 'Cangkuang'
  //       ), 
  //     content: Content(
  //       image: 'https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/81/2024/10/24/ilustrasi-for-rafi-ahmad-jadi-staff-khusus-presiden-633761062.png', 
  //       likes: '67.2890 Likes', 
  //       description: 'Bismillah dilantik'
  //       )),

    
  // ];