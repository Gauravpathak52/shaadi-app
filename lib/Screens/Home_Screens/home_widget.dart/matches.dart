import 'package:flutter/material.dart';
import 'package:gaurav_shaadi/res/image.dart';

class HorizontalScroll extends StatefulWidget {
  const HorizontalScroll({super.key});

  @override
  State<HorizontalScroll> createState() => _HorizontalScrollState();
}

class _HorizontalScrollState extends State<HorizontalScroll> {
  final List<Map<String, dynamic>> matches = [
    {
      'name': 'Emma',
      'age': 26,
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJopZhqB8gtlnYkigJlOZ1wPdiFSnA2uMJrw&s'
    },
    {
      'name': 'Olivia',
      'age': 27,
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-JuAXahVJaFIv76hJXqUtJVAGH_dIek8jlB6LwbGx3rrumt6ESEd2ef56EaL6ZnZuRAI&usqp=CAU'
    },
    {
      'name': 'Sara',
      'age': 25,
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQk--o9j2IG8gL_De04_7e4Xp6WU-Pwg_73bmYTy-U-pEMjRc2cFiMu0paJVqwIaWCf6Dk&usqp=CAU'
    },
    {
      'name': 'Ava',
      'age': 24,
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdnXokIMc3CCDTywnlNZ3359m8tG-L62b2p4WA5nLLENT4ax3UgYuByrqagoae2246EAE&usqp=CAU'
    },
    {
      'name': 'Sophia',
      'age': 28,
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvYpVWjP1pNfxwONULxugAUdcWF7ADoL2eJsrB7KQV2YbEaljerhzuoGivHMg6kiJbO3U&usqp=CAU'
    },
    {
      'name': 'Charlotte',
      'age': 29,
      'image':
          'https://funylife.in/wp-content/uploads/2023/04/15_Cute-Girl-Pic-WWW.FUNYLIFE.IN_-1-1024x1024.jpg'
    },
    {
      'name': 'Amelia',
      'age': 27,
      'image': 'https://photoszone.net/wp-content/uploads/cute-girl-pic31.jpg'
    },
    {
      'name': 'Harper',
      'age': 25,
      'image': 'https://photoszone.net/wp-content/uploads/cute-girl-pic25.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.24,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: matches.length,
        itemBuilder: (context, index) {
          final match = matches[index];
          return Container(
            margin: const EdgeInsets.only(left: 12),
            width: MediaQuery.of(context).size.width * 0.41,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 2,
                  blurRadius: 5,
                ),
              ],
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(12)),
                  child: Image.network(
                    match['image'],
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 0.2,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Image.asset(
                        ImagePaths.default_image,
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      );
                    },
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  '${match['name']}, ${match['age']}',
                  style: const TextStyle(fontWeight: FontWeight.w500),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
