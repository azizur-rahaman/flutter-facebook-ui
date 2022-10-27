class FriendsModel {
  final String name;
  final String avatar;

  FriendsModel({
    required this.name,
    required this.avatar,
  });
}

List<FriendsModel> friendsData = [
  FriendsModel(
      name: 'Rabi',
      avatar:
          'https://images.unsplash.com/photo-1601288496920-b6154fe3626a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'),
  FriendsModel(
      name: 'crush',
      avatar:
          'https://images.unsplash.com/photo-1595959183082-7b570b7e08e2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=736&q=80')
];
