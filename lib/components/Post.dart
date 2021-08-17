import 'package:flutter/cupertino.dart';

class Post {
  final String userImage;
  final String username;
  final postImage;
  final String caption;

  final DateTime? currentTime;

  Post({
    this.currentTime,
    required this.userImage,
    required this.username,
    this.postImage,
    required this.caption,
  });
}
