class Feed {
  final int id;
  //user
  final User user;
  //content
  final Content content;

  Feed({
    required this.id, 
    required this.user, 
    required this.content
  });
 }

class Content {
  final String image;
  final String likes;
  final String description;
  bool isLike;

  Content({
    required this.image, 
    required this.likes, 
    required this.description,
    required this.isLike,
  });
}

class User {
  final String name;
  final String avatar;
  final String place;

  User({
    required this.name, 
    required this.avatar, 
    required this.place,
  });
}