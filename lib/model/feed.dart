class Feed {
<<<<<<< HEAD
  final int id;
=======
>>>>>>> edc4c3625c05c88821f110ddfce3904683f2f3c6
  final User user;
  final Content content;

  Feed({
<<<<<<< HEAD
    required this.id, 
    required this.user, 
    required this.content,
  });
=======
    required this.user,
    required this.content
    });
>>>>>>> edc4c3625c05c88821f110ddfce3904683f2f3c6
}

class Content {
  final String image;
  final String likes;
  final String description;
<<<<<<< HEAD
  bool isLike;
  bool isBookmarked; // Tambahkan properti isBookmarked

  Content({
    required this.image, 
    required this.likes, 
    required this.description,
    required this.isLike,
    this.isBookmarked = false, // Set nilai awal false
=======

  Content({
    required this.image,
    required this.likes,
    required this.description,
>>>>>>> edc4c3625c05c88821f110ddfce3904683f2f3c6
  });
}

class User {
  final String name;
  final String avatar;
  final String place;

<<<<<<< HEAD
  User({
    required this.name, 
    required this.avatar, 
    required this.place,
  });
}
=======
User({
  required this.name,
  required this.avatar,
  required this.place,
});
}

>>>>>>> edc4c3625c05c88821f110ddfce3904683f2f3c6
