import 'package:flutter/material.dart';

class ChatListWidget extends StatelessWidget {
  ChatListWidget({super.key});

  final List<Map<String, dynamic>> chats = [
    {
      'name': 'John',
      'message': 'Hey! How are you?',
      'time': '2h',
      'image':
          'https://i.pinimg.com/236x/0e/53/54/0e5354cf245bef8fe7344b783e895c78.jpg'
    },
    {
      'name': 'Emily',
      'message': 'Sounds good!',
      'time': '4h',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-JuAXahVJaFIv76hJXqUtJVAGH_dIek8jlB6LwbGx3rrumt6ESEd2ef56EaL6ZnZuRAI&usqp=CAU'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: chats.map((chat) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(chat['image']),
          ),
          title: Text(chat['name']),
          subtitle: Text(chat['message']),
          trailing: Text(chat['time']),
        );
      }).toList(),
    );
  }
}
