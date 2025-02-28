import 'package:flutter/material.dart';

class PhotoHero extends StatelessWidget {
  const PhotoHero({super.key, required this.photo});

  final String photo;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: const Text('Photo Hero')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Hero(
            tag: photo,
            child: ClipOval(
              child: Image.asset(
                'assets/profile.jpg',
                fit: BoxFit.cover,
                height: 200,
                width: 200,
              ),
            ),
          ),
          SizedBox(height: 16, width: size.width),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Go back!'),
          ),
        ],
      ),
    );
  }
}
