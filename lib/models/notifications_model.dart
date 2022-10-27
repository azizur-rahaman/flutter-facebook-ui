class NotificationModel {
  final String name;
  final String avatar;
  final String time;
  final String description;

  NotificationModel({
    required this.name,
    required this.avatar,
    required this.time,
    required this.description,
  });
}

List<NotificationModel> notificationData = [
  NotificationModel(
      name: 'Rabi',
      avatar:
          'https://images.unsplash.com/photo-1626452258360-03b0148a8386?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
      time: ' 9 min ago',
      description: 'Like your photo'),
  NotificationModel(
      name: 'Aunty',
      avatar:
          'https://images.unsplash.com/photo-1475609471617-0ef53b59cff5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80',
      time: '10 min ago',
      description: 'send friend request'),
  NotificationModel(
      name: 'Some one',
      avatar:
          'https://images.unsplash.com/photo-1579493934830-eab45746b51b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
      time: '1 min ago',
      description: 'Commented on your photo'),
];
