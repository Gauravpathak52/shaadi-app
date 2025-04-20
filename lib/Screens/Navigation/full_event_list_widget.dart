import 'package:flutter/material.dart';

class FullEventListWidget extends StatelessWidget {
  FullEventListWidget({super.key});

  final List<Map<String, String>> events = List.generate(20, (index) {
    return {
      'title': 'Event ${index + 1}',
      'description': 'Description of Event ${index + 1}. Enjoy the vibes!',
    };
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: events.length,
        itemBuilder: (context, index) {
          final event = events[index];
          return ListTile(
            leading: const Icon(Icons.calendar_today, color: Colors.blue),
            title: Text(
              event['title']!,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(event['description'] ?? ''),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              // Add navigation or dialog if needed
            },
          );
        },
      ),
    );
  }
}
