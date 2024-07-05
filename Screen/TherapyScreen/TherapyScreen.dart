import 'package:flutter/material.dart';

class TherapyScreen extends StatelessWidget {
  const TherapyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         backgroundColor: Color(0xFFFED0B2),
      appBar: AppBar(
        title: Text('Therapy Session'),
        backgroundColor:Color(0xffDE6060),
      ),
      body: TherapySessionScreen(),
    );
  }
}

class TherapySessionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(
              'Today\'s Session',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Session Overview:',
            style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            '• Guided meditation\n• Breathing exercises\n• Journaling',
            style: TextStyle(fontSize: 16,color: Color.fromRGBO(244, 113, 113, 1),fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 24),
          Text(
            'Music Options:',
            style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          MusicOptionsRow(),
          SizedBox(height: 24),
        
        ],
      ),
    );
  }
}

class MusicOptionsRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          MusicOptionCard(
            title: 'Relaxing Piano',
            image: 'assets/piano.png',
          ),
          MusicOptionCard(
            title: 'Nature Sounds',
            image: 'assets/nature.png',
          ),
          MusicOptionCard(
            title: 'Ambient Music',
            image: 'assets/ambient.png',
          ),
        ],
      ),
    );
  }
}

class MusicOptionCard extends StatelessWidget {
  final String title;
  final String image;

  MusicOptionCard({required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(right: 16),
      child: Column(
        children: [
          Image.asset(
            image,
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title),
          ),
        ],
      ),
    );
  }
}