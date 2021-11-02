import 'package:app_message_ui/model/User.dart';

class Chat {
  String? text;
  User? user;
  int? number;
  String? dob;

  Chat({this.text, this.user, this.number, this.dob});

  Chat.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    number = json['unread_count'];
    dob = json['created_at'];
  }
}

class ResultsChat {
  List<Chat> resultsChat;

  ResultsChat(this.resultsChat);

  factory ResultsChat.fromJson(Map<String, dynamic> json) {
    final chats = <Chat>[];
    if (json['results'] != null) {
      final list = json['results'] as List;
      for (final item in list) {
        final chat = Chat.fromJson(item);
        chats.add(chat);
      }
    }
    return ResultsChat(chats);
  }
}
