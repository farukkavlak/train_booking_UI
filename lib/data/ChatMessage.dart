enum ChatMessageType { text, audio, image, video }
enum MessageStatus { not_sent, not_view, viewed }

class ChatMessage {
  final String text;
  final bool isSender;
  final ChatMessageType messageType;
  ChatMessage({
    this.text = '',
    required this.isSender,
    required this.messageType,
  });
}

List demeChatMessages = [
  ChatMessage(
    text: "Hi, How can I help you ? ",
    isSender: false,
    messageType: ChatMessageType.text,
  ),
  ChatMessage(
    text: "Hi, I want to refund ticket.",
    isSender: true,
    messageType: ChatMessageType.text,
  ),
  ChatMessage(
    text: "Ok, I can help you with that. "
        "\nWould you tell me your ticket number?",
    isSender: false,
    messageType: ChatMessageType.text,
  ),
  ChatMessage(
    text: "**************",
    isSender: true,
    messageType: ChatMessageType.text,
  ),
  ChatMessage(
    text: "I am checking...",
    isSender: false,
    messageType: ChatMessageType.text,
  ),
  ChatMessage(
    text: "Your ticket has been refunded",
    isSender: false,
    messageType: ChatMessageType.text,
  ),
  ChatMessage(
    text: "Thanks!",
    isSender: true,
    messageType: ChatMessageType.text,
  ),
  ChatMessage(
    text: "Glad you like it!",
    isSender: false,
    messageType: ChatMessageType.text,
  ),
];
