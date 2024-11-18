<<<<<<< HEAD
import 'package:flutter/material.dart';
import 'package:sesi44/model/feed.dart';
import 'package:sesi44/model/feed_repository.dart';

class FeedController extends ChangeNotifier {
  List<Feed> feeds = FeedRepository().fetch();
  int get length => feeds.length;

List<Feed>  get bookmarkedFeeds => feeds.where((Element) => Element.content.isBookmarked == true).toList();

  Feed feed(int index) {
    return feeds[index];
  }

  // Method untuk like/unlike
  like(Feed feed) {
    feeds
        .firstWhere(
          (Element) => Element.id == feed.id,
        )
        .content.isLike = !feed.content.isLike;
    notifyListeners();
  }

  // Method untuk toggle bookmark
  toggleBookmark(Feed feed) {
    feeds
        .firstWhere(
          (Element) => Element.id == feed.id,
        )
        .content.isBookmarked = !feed.content.isBookmarked;
    notifyListeners();
  }

  // Refresh data feed
  refresh() {
    feeds = FeedRepository().fetch();
    notifyListeners();
  }
}
=======
import 'package:test4/model/feed.dart';

class FeedController {
  List<Feed> feeds = [
    Feed(
    user: User(
      name: 'skecth.bdg',
      avatar: 'https://images.pexels.com/photos/29034031/pexels-photo-29034031/free-photo-of-serene-sheep-grazing-in-lush-meadow.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 
      place: 'Bandung,Paris van jawa',
      ),
    content: Content(
      image: 'https://images.pexels.com/photos/10414204/pexels-photo-10414204.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      likes: '1000000 likes',
      description: 'ad aps niyyy',
    )
    ),
    Feed(
    user: User(
      name: 'bucin.wikipedia',
      avatar: 'https://images.pexels.com/photos/28357757/pexels-photo-28357757/free-photo-of-workshop-de-fotografias-de-bodas.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 
      place: 'Bandung,Paris van jawa',
      ),
    content: Content(
      image: 'https://images.pexels.com/photos/27545223/pexels-photo-27545223/free-photo-of-model-in-sweater-lying-on-grass.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      likes: '1000000 likes',
      description: 'im with u',
    )
    ),
    Feed(
    user: User(
      name: 'nasi',
      avatar: 'https://images.pexels.com/photos/29191749/pexels-photo-29191749/free-photo-of-traditional-farmer-in-rural-vietnamese-setting.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 
      place: 'Bandung,Paris van jawa',
      ),
    content: Content(
      image: 'https://images.pexels.com/photos/19640832/pexels-photo-19640832/free-photo-of-untitled.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      likes: '1234566767 likes',
      description: 'EARTH IN MY FEED',
    )
    ),
  ];
  
}
>>>>>>> edc4c3625c05c88821f110ddfce3904683f2f3c6
