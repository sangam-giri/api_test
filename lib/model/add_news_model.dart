class AddNewsModel {
  int userId;
  String title;
  String body;
  AddNewsModel({required this.userId, required this.title, required this.body});

  Map<String, dynamic> toJson() =>
      {"userId": userId, "title": title, "body": body};
}
