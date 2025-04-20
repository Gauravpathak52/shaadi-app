import 'package:flutter/material.dart';
import 'package:gaurav_shaadi/Screens/Drawer/drawer.dart';
import 'package:gaurav_shaadi/Screens/Home_Screens/home_screen.dart';
import 'package:gaurav_shaadi/Screens/Home_Screens/Match_lists/match_list.dart';
import 'package:gaurav_shaadi/Screens/Navigation/full_chat_list.dart';
import 'package:gaurav_shaadi/Screens/Navigation/full_event_list_widget.dart';
import 'package:gaurav_shaadi/Screens/Navigation/profile_screen.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    MatchesFullScreenList(),
    FullChatList(),
    FullEventListWidget(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(
        title: const Text(''),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(Icons.notifications_none, color: Colors.black),
          ),
        ],
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _currentIndex == 0 ? Colors.blue : Colors.grey,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              color: _currentIndex == 1 ? Colors.red : Colors.grey,
            ),
            label: 'Matches',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
              color: _currentIndex == 2 ? Colors.green : Colors.grey,
            ),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.event,
              color: _currentIndex == 3 ? Colors.purple : Colors.grey,
            ),
            label: 'Events',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: _currentIndex == 4 ? Colors.deepOrange : Colors.grey,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
