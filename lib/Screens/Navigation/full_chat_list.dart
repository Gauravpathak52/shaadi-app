import 'package:flutter/material.dart';

class FullChatList extends StatelessWidget {
  FullChatList({super.key});

  final List<Map<String, dynamic>> chats = List.generate(30, (index) {
    return {
      'name': 'User ${index + 1}',
      'message': 'This is a sample message from User ${index + 1}.',
      'time': '${(index + 1) * 2}m',
      'image': 'https://i.pravatar.cc/150?img=${index + 1}',
    };
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) {
          final chat = chats[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(chat['image']),
            ),
            title: Text(chat['name']),
            subtitle: Text(chat['message']),
            trailing: Text(chat['time']),
          );
        },
      ),
    );
  }
}
