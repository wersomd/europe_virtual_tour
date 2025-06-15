import 'dart:convert';
import 'package:app/utils/util.dart';
import 'package:http/http.dart' as http;
import 'package:app/models/chat_model.dart';

class ChatRepository {
  Future<Message> sendMessageAndGetResponse(
      {required List<Message> chatMessages}) async {
    try {
      final apiUri = Uri.parse(ApiUtil.baseUrl);

      final systemMessage = Message(
        role: 'system',
        content:
            'Ты виртуальный помощник по турам Европе. Дай советы пользователям какие туры хорошие и отвечай на вопросы про достопримечателнести Европе.',
      );

      final fullMessages = [systemMessage, ...chatMessages];

      final chatJson = fullMessages.map((message) => message.toJson()).toList();

      final response = await http.post(
        apiUri,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${ApiUtil.apiKey}',
        },
        body: jsonEncode(
          {
            'model': 'gpt-3.5-turbo',
            'messages': chatJson,
            'max_tokens': 500,
          },
        ),
      );

      if (response.statusCode == 200) {
        final chatResponse = chatModelFromJson(utf8.decode(response.bodyBytes));

        return chatResponse.choices[0].message;
      } else {
        return Future.error(response.body);
      }
    } catch (e) {
      rethrow;
    }
  }
}
