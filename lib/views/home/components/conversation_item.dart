import 'package:flutter/material.dart';

class ConversationItem extends StatefulWidget {
  final Map<String, dynamic> conversation;
  final String photoUrl;

  const ConversationItem(
      {super.key, required this.conversation, required this.photoUrl});

  @override
  State<ConversationItem> createState() => ConversationItemState();
}

class ConversationItemState extends State<ConversationItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(widget.photoUrl),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(widget.conversation['name']),
          Text(
            widget.conversation['last_access'],
            style: const TextStyle(color: Colors.white38),
          ),
        ],
      ),
      subtitle: Text(widget.conversation['last_word']),
      onTap: () {},
    );
  }
}
