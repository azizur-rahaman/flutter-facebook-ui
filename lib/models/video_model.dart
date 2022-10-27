import 'package:flutter/Material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoModel {
  final VoidCallback avatarOnPressed;
  final String avatarImage;
  final String name;
  final String time;
  final VoidCallback moreOnPressed;
  final String videoPostTitle;
  final String? videoPostLink;
  final VoidCallback likeOnPressed;
  final VoidCallback commentOnPressed;
  final VoidCallback shareOnPressed;

  VideoModel({
    required this.avatarOnPressed,
    required this.avatarImage,
    required this.name,
    required this.time,
    required this.moreOnPressed,
    required this.videoPostTitle,
    required this.videoPostLink,
    required this.likeOnPressed,
    required this.commentOnPressed,
    required this.shareOnPressed,
  });
}

List<VideoModel> videoData = [
  VideoModel(
      avatarOnPressed: () => debugPrint('Avatar Clicked'),
      avatarImage:
          'https://images.unsplash.com/photo-1579493934830-eab45746b51b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
      name: 'Rabi',
      time: 'Just Now',
      moreOnPressed: () => debugPrint('More Clicked'),
      videoPostTitle:
          'If you are going to pass the exam you need to do hard work. Hard work is the success of pillar.',
      videoPostLink: YoutubePlayer.convertUrlToId(
          'https://www.youtube.com/watch?v=4AQR4i9ZZ0I'),
      likeOnPressed: () => debugPrint('Like Clicked'),
      commentOnPressed: () => debugPrint('Comment Clicked'),
      shareOnPressed: () => debugPrint('Share Clicked')),
  VideoModel(
      avatarOnPressed: () => debugPrint('Avatar Clicked'),
      avatarImage:
          'https://images.unsplash.com/photo-1579493934830-eab45746b51b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
      name: 'Rabi',
      time: 'Just Now',
      moreOnPressed: () => debugPrint('More Clicked'),
      videoPostTitle:
          'If you are going to pass the exam you need to do hard work. Hard work is the success of pillar.',
      videoPostLink: YoutubePlayer.convertUrlToId(
          'https://www.youtube.com/watch?v=4AQR4i9ZZ0I'),
      likeOnPressed: () => debugPrint('Like Clicked'),
      commentOnPressed: () => debugPrint('Comment Clicked'),
      shareOnPressed: () => debugPrint('Share Clicked')),
  VideoModel(
      avatarOnPressed: () => debugPrint('Avatar Clicked'),
      avatarImage:
          'https://images.unsplash.com/photo-1579493934830-eab45746b51b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
      name: 'Rabi',
      time: 'Just Now',
      moreOnPressed: () => debugPrint('More Clicked'),
      videoPostTitle:
          'If you are going to pass the exam you need to do hard work. Hard work is the success of pillar.',
      videoPostLink: YoutubePlayer.convertUrlToId(
          'https://www.youtube.com/watch?v=4AQR4i9ZZ0I'),
      likeOnPressed: () => debugPrint('Like Clicked'),
      commentOnPressed: () => debugPrint('Comment Clicked'),
      shareOnPressed: () => debugPrint('Share Clicked')),
];
