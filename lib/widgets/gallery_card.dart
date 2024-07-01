import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GalleryCard extends StatelessWidget {
  final String title;
  final String location;
  final double rating;
  final Widget detailPage;
  final String imagePath;

  GalleryCard({
    required this.title,
    required this.location,
    required this.rating,
    required this.detailPage,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.0),
      child: Column(
        children: [
          Image.asset(imagePath, fit: BoxFit.cover),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.lato(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  ),
                ),
                SizedBox(height: 5.0),
                Text(
                  location,
                  style:
                      GoogleFonts.lato(fontSize: 16.0, color: Colors.black54),
                ),
                SizedBox(height: 5.0),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow, size: 20.0),
                    SizedBox(width: 5.0),
                    Text(
                      '$rating',
                      style: GoogleFonts.lato(
                          fontSize: 16.0, color: Colors.black54),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => detailPage),
                    );
                  },
                  child: Text('Lihat Selengkapnya'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
