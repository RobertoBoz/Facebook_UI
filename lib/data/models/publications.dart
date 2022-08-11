class Publications {

  final String title;
  final DateTime createdAt;
  final String imageUrl;
  final int commentsCount;
  final int shareCount;
  final Reaction currentReaction;
  final User user;

  Publications( {
    required this.title,
    required this.createdAt, 
    required this.imageUrl,
    required this.commentsCount, 
    required this.shareCount,
    required this.currentReaction,
    required this.user
  });




}

class User{
  final String avatar; 
  final String username;

  User({required this.avatar, required this.username});
}

enum Reaction{
  like,
  love,
  laughin,
  sad,
  shocking  
}