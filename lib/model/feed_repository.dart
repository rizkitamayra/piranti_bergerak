import 'package:sesi44/model/feed.dart';

class FeedRepository {
  List<Feed> fetch() {
    return [
    Feed(
      id: 1,
      user: User(
        name: 'skecth.bdg',
      avatar: 'https://images.pexels.com/photos/29034031/pexels-photo-29034031/free-photo-of-serene-sheep-grazing-in-lush-meadow.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 
      place: 'Bandung,Paris van jawa'
        ), 
      content: Content(
        isLike: false,
        image: 'https://images.pexels.com/photos/10414204/pexels-photo-10414204.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      likes: '1000000 likes',
      description: 'ad aps niyyy'
        )),
    Feed(
      id: 2,
      user: User(
        name: 'saglzer',
      avatar: 'https://images.pexels.com/photos/28357757/pexels-photo-28357757/free-photo-of-workshop-de-fotografias-de-bodas.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 
      place: 'Bandung,Paris van jawa'
        ), 
      content: Content(
        isLike: false,
        image: 'https://images.pexels.com/photos/27545223/pexels-photo-27545223/free-photo-of-model-in-sweater-lying-on-grass.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      likes: '1000000 likes',
      description: 'im with u'
        )),
    Feed(
      id: 3,
      user: User(
        name: 'nasi',
      avatar: 'https://images.pexels.com/photos/29191749/pexels-photo-29191749/free-photo-of-traditional-farmer-in-rural-vietnamese-setting.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 
      place: 'Bandung,Paris van jawa'
        ), 
      content: Content(
        isLike: false,
            image: 'https://images.pexels.com/photos/19640832/pexels-photo-19640832/free-photo-of-untitled.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      likes: '1234566767 likes',
      description: 'EARTH IN MY FEED'
        )),

    
  ];
  }
}