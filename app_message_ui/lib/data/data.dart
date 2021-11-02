import 'dart:convert';

import 'package:app_message_ui/model/chat.dart';
import 'package:app_message_ui/model/user.dart';
import 'package:dio/dio.dart';

List<User> info = [];
List<Chat> infoC = [];
void getHttp() async {
  try {
    var response = await Dio().get(
        'https://gist.githubusercontent.com/daohoangson/d5a413683a7f23a9edcb37919379a357/raw/94f128ec105026ac128b92617227c2e4668f7ce2/users.json');
    final map = jsonDecode(response.data);
    final results = Results.fromJson(map);
    info = results.results;
  } catch (e) {
    print(e);
  }
}

void getHttpChat() async {
  try {
    var response = await Dio().get(
        'https://gist.githubusercontent.com/daohoangson/d5a413683a7f23a9edcb37919379a357/raw/94f128ec105026ac128b92617227c2e4668f7ce2/chats.json');
    final map = jsonDecode(response.data);
    final results = ResultsChat.fromJson(map);
    infoC = results.resultsChat;
  } catch (e) {
    print(e);
  }
}
