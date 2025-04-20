import 'package:flutter/material.dart';
import 'package:gaurav_shaadi/Screens/Home_Screens/Match_lists/match_list.dart';
import 'package:gaurav_shaadi/Screens/Home_Screens/home_widget.dart/chat_cards.dart';
import 'package:gaurav_shaadi/Screens/Home_Screens/home_widget.dart/events.dart';
import 'package:gaurav_shaadi/Screens/Home_Screens/home_widget.dart/header_card.dart';
import 'package:gaurav_shaadi/Screens/Home_Screens/home_widget.dart/matches.dart';
import 'package:gaurav_shaadi/Screens/Navigation/full_chat_list.dart';
import 'package:gaurav_shaadi/Screens/Navigation/full_event_list_widget.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeaderCard(),
            const SizedBox(height: 20),
            _buildSectionTitle('Matches for you', onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MatchesFullScreenList(),
                ),
              );
            }),
            const SizedBox(height: 2),
            const HorizontalScroll(),
            const SizedBox(height: 20),
            _buildSectionTitle('Chats', onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FullChatList(),
                ),
              );
            }),
            ChatListWidget(),
            const SizedBox(height: 20),
            _buildSectionTitle('Upcoming Events', onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FullEventListWidget(),
                ),
              );
            }),
            EventListWidget(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title, {required VoidCallback onTap}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          GestureDetector(
            onTap: onTap,
            child: const Text('View all', style: TextStyle(color: Colors.blue)),
          ),
        ],
      ),
    );
  }
}
