import 'package:flutter/material.dart';

class MatchesFullScreenList extends StatelessWidget {
  MatchesFullScreenList({super.key});

  final List<Map<String, String>> girls = [
    {
      'name': 'Priya Sharma',
      'age': '24',
      'caste': 'Brahmin Hindu',
      'image':
          'https://www.itl.cat/pngfile/big/289-2896659_beautiful-girl-wallpaper-download-beautiful-girl-wallpaper-hd.jpg'
    },
    {
      'name': 'Anjali Verma',
      'age': '23',
      'caste': 'Kayastha Hindu',
      'image':
          'https://e1.pxfuel.com/desktop-wallpaper/767/795/desktop-wallpaper-anna-von-klinski.jpg'
    },
    {
      'name': 'Neha Singh',
      'age': '25',
      'caste': 'Rajput Hindu',
      'image':
          'https://e0.pxfuel.com/wallpapers/688/613/desktop-wallpaper-alica-schmidt-thumbnail.jpg'
    },
    {
      'name': 'Pooja Yadav',
      'age': '22',
      'caste': 'Yadav Hindu',
      'image': 'https://wallpapercave.com/wp/wp7459110.jpg'
    },
    {
      'name': 'Kritika Mishra',
      'age': '26',
      'caste': 'Brahmin Hindu',
      'image':
          'https://e0.pxfuel.com/wallpapers/218/480/desktop-wallpaper-hottest-of-nisha-guragain-nisha-guragain-tiktok-star.jpg'
    },
    {
      'name': 'Riya Sinha',
      'age': '24',
      'caste': 'Bhumihar Hindu',
      'image':
          'https://e0.pxfuel.com/wallpapers/294/483/desktop-wallpaper-%DC%85-100-nisha-guragain-hot-beautiful-hoot.jpg'
    },
    {
      'name': 'Simran Chauhan',
      'age': '23',
      'caste': 'Rajput Hindu',
      'image': 'https://cdn.wallpapersafari.com/42/98/DpfsWR.jpg'
    },
    {
      'name': 'Sakshi Pandey',
      'age': '25',
      'caste': 'Brahmin Hindu',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSx74x48YkyG-2PvTfEM-AB2D4QfKQdZp6OaEZgMIDAcqkRdEyWqyQ52M2LqfCFqdRtYas&usqp=CAU'
    },
    {
      'name': 'Nikita Dubey',
      'age': '24',
      'caste': 'Brahmin Hindu',
      'image':
          'https://e1.pxfuel.com/desktop-wallpaper/645/1009/desktop-wallpaper-pin-di-feminine-flair-pichana-yoosuk.jpg'
    },
    {
      'name': 'Shruti Jha',
      'age': '22',
      'caste': 'Maithil Brahmin',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1RmvzuX2gAJesc-I5EUwzIAYxT5qJbLwwGbiCEkk_VZ9Auus71yzKuPhnBR-L7QSSWx8&usqp=CAU'
    },
    {
      'name': 'Ankita Raj',
      'age': '26',
      'caste': 'Kurmi Hindu',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZHEljI2QnYBldGHAXL6EPsTxxlPLjM-9ncCTCYHFGLGLuWzzqahp8l-VaRO5BVt12yuI&usqp=CAU'
    },
    {
      'name': 'Divya Saxena',
      'age': '24',
      'caste': 'Kayastha Hindu',
      'image': 'https://static3.bigstockphoto.com/7/4/3/large1500/347825005.jpg'
    },
    {
      'name': 'Ishita Srivastava',
      'age': '23',
      'caste': 'Brahmin Hindu',
      'image':
          'https://e1.pxfuel.com/desktop-wallpaper/713/119/desktop-wallpaper-megan-fox-close-click-ultra-mobile-megan-fox-phone.jpg'
    },
    {
      'name': 'Megha Gupta',
      'age': '25',
      'caste': 'Vaishya Hindu',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTT4n_0i3gtpspByfY59MltPsbjtklAl6MlwPnPzuqbwFvuy8NhqiToDNOLs9r3ByFPtNc&usqp=CAU'
    },
    {
      'name': 'Swati Joshi',
      'age': '22',
      'caste': 'Garhwali Brahmin',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRE0Mp6whNlXv3NT3S40nJ2rM0HuxhO5L6Iot56WmEeJY7RhYk9gBbNWvB-Ja6Uua0SQHo&usqp=CAU'
    },
    {
      'name': 'Tanya Tripathi',
      'age': '24',
      'caste': 'Brahmin Hindu',
      'image':
          'https://www.shutterstock.com/image-photo/beautiful-blond-haired-blue-eyed-260nw-202308625.jpg'
    },
    {
      'name': 'Pallavi Rawat',
      'age': '23',
      'caste': 'Rajput Hindu',
      'image':
          'https://thumbs.dreamstime.com/b/perfect-sexy-tan-woman-skin-big-full-lips-posing-bedroom-lady-lying-her-stomach-white-bed-60324558.jpg'
    },
    {
      'name': 'Nandini Patel',
      'age': '25',
      'caste': 'Patel Hindu',
      'image':
          'https://www.shutterstock.com/image-photo/beautiful-blonde-xxl-diet-overweight-260nw-1276789951.jpg'
    },
    {
      'name': 'Sanjana Shukla',
      'age': '26',
      'caste': 'Brahmin Hindu',
      'image':
          'https://www.wikihow.com/images/thumb/3/35/Reina_LeGrand_.png/-crop-200-200-200px-Reina_LeGrand_.png'
    },
    {
      'name': 'Khushi Mehta',
      'age': '24',
      'caste': 'Vaishya Hindu',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKlZH82-WfqcirjGqKnJGxCeLAVy1mO0OhEf5yXtIGQQvCK4dIsJF14bJqPJW7k6rHjdQ&usqp=CAU'
    },
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: girls.length,
          itemBuilder: (context, index) {
            final girl = girls[index];
            return Stack(
              children: [
                SizedBox(
                  height: height,
                  width: double.infinity,
                  child: Image.network(
                    girl['image']!,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 35,
                  left: 20,
                  right: 20,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Name: ${girl['name']},\nAge: ${girl['age']}',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            shadows: [
                              Shadow(
                                offset: Offset(1, 1),
                                blurRadius: 5,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Caste: ${girl['caste']!}',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            shadows: [
                              Shadow(
                                offset: Offset(1, 1),
                                blurRadius: 5,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
