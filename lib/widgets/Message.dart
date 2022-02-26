import 'package:flutter/material.dart';
import 'package:train_ticket/data/ChatMessage.dart';
import 'package:train_ticket/utilities/Constants.dart';
import 'package:train_ticket/widgets/TextMessage.dart';

class Message extends StatelessWidget {
  const Message({
    Key? key,
    required this.message,
  }) : super(key: key);

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    Widget messageContaint(ChatMessage message) {
      switch (message.messageType) {
        case ChatMessageType.text:
          return TextMessage(message: message);
        default:
          return SizedBox();
      }
    }

    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment:
            message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!message.isSender) ...[
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 12,
              child: Icon(
                Icons.support_agent,
                color: Colors.blue,
              ),
            ),
            SizedBox(width: 10),
          ],
          messageContaint(message),
        ],
      ),
    );
  }
}
