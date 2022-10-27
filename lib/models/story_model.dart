import 'package:flutter/cupertino.dart';

class StoryModel {
  final VoidCallback onTap;
  final String image;
  final String username;

  StoryModel({
    required this.onTap,
    required this.image,
    required this.username,
  });
}

List<StoryModel> storyData = [
  StoryModel(
      onTap: () => debugPrint('rabi story clicked'),
      image:
          'https://images.unsplash.com/photo-1626452258360-03b0148a8386?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
      username: 'Rabi'),
  StoryModel(
      onTap: () => debugPrint('Aunty story clicked'),
      image:
          'https://images.unsplash.com/photo-1475609471617-0ef53b59cff5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80',
      username: 'Aunty'),
  StoryModel(
      onTap: () => debugPrint('SomeOn story clicked'),
      image:
          'https://images.unsplash.com/photo-1579493934830-eab45746b51b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
      username: 'SomeOn'),
];
