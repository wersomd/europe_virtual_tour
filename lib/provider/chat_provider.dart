import 'package:flutter/material.dart';
import 'package:app/models/chat_model.dart';

class ChatProvider extends ChangeNotifier {
  final List<Message> _chatMessages = [];

  List<Message> get chatMessages => _chatMessages;

  Future<void> sendMessage({required String userMessage}) async {
    _chatMessages.add(Message(content: userMessage, role: 'user'));
    _chatMessages.add(Message(
        content: 'Біздің AI қазіргі уақытта қолжетімсіз...',
        role: 'assistant'));
    notifyListeners();
  }
}
