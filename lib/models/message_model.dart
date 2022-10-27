import 'package:flutter/material.dart';

class MessageModel {
  final String name;
  final String time;
  final String avatar;
  final status;

  MessageModel(
      {required this.name,
      required this.time,
      required this.avatar,
      required this.status});

  static Icon statusOffline =
      const Icon(Icons.phone_android_outlined, size: 18, color: Colors.green);

  static Icon statusOnline =
      const Icon(Icons.phone_android_outlined, size: 18, color: Colors.black38);
}

List<MessageModel> messageData = [
  MessageModel(
      name: 'Rabi',
      time: '10:20',
      avatar:
          'https://images.unsplash.com/photo-1626452258360-03b0148a8386?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
      status: MessageModel.statusOffline),
  MessageModel(
      name: 'Some One',
      time: '09:20',
      avatar:
          'https://images.unsplash.com/photo-1579493934830-eab45746b51b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
      status: MessageModel.statusOnline),
];
