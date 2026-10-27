class Post {
  final String username;
  final String userImage;
  final List<String> images;
  bool isLiked;
  bool isSaved;

  Post({
    required this.username,
    required this.userImage,
    required this.images,
    this.isLiked = false,
    this.isSaved = false,
  });
}
