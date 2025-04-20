import 'package:flutter/material.dart';

class EventListWidget extends StatelessWidget {
  EventListWidget({super.key});

  final List<Map<String, String>> events = [
    {
      'title': 'Dinner Date',
      'description': 'Romantic dinner with live music',
    },
    {
      'title': 'Night Party',
      'description': 'DJ and Dance Floor fun',
    },
    {
      'title': 'Shaadi Meetup',
      'description': 'Meet your potential match',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: events.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
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
          onTap: () {},
        );
      },
    );
  }
}
