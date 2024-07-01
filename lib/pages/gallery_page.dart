import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '/pages/homepage.dart';
import '/pages/package_listing_page.dart';
import '/pages/profile.dart';
import '/widgets/gallery_card.dart';
import 'detail_page1.dart';
import 'detail_page2.dart';
import 'detail_page3.dart';
import 'detail_page4.dart';

class GalleryPage extends StatefulWidget {
  @override
  _GalleryPageState createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  int _selectedIndex = 3;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
        break;
      case 1:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => PackageListingPage()),
        );
        break;
      case 2:
        break;
      case 3:
        break;
      case 4:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Profile()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Gallery',
          style: GoogleFonts.lato(),
        ),
        backgroundColor: Colors.lightBlueAccent,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF77A6F7),
                Color(0xFFCFDFF7),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF77A6F7),
                    Color(0xFFCFDFF7),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Text(
                'Menu',
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.blueAccent),
              title: Text('Home', style: GoogleFonts.lato()),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_bag, color: Colors.blueAccent),
              title: Text('Paket', style: GoogleFonts.lato()),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => PackageListingPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.location_on, color: Colors.blueAccent),
              title: Text('Lokasi', style: GoogleFonts.lato()),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.image, color: Colors.blueAccent),
              title: Text('Galeri', style: GoogleFonts.lato()),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle, color: Colors.blueAccent),
              title: Text('Profil', style: GoogleFonts.lato()),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('lib/assets/images/header_galeri.png',
                fit: BoxFit.cover),
            GalleryCard(
              title: 'Fiona & Izhar',
              location: 'Cirebon',
              rating: 4.5,
              detailPage: DetailPage1(
                title: 'Fiona & Izhar',
                location: 'Cirebon',
                rating: 4.5,
              ),
              imagePath: 'lib/assets/images/1/Galeri1.jpg',
            ),
            GalleryCard(
              title: 'Silvia & David',
              location: 'Kuningan',
              rating: 4.5,
              detailPage: DetailPage2(
                title: 'Silvia & David',
                location: 'Kuningan',
                rating: 4.5,
              ),
              imagePath: 'lib/assets/images/2/Galeri1.jpg',
            ),
            GalleryCard(
              title: 'Angela & Paquito',
              location: 'Kuningan',
              rating: 4.5,
              detailPage: DetailPage3(
                title: 'Angela & Paquito',
                location: 'Kuningan',
                rating: 4.5,
              ),
              imagePath: 'lib/assets/images/3/Galeri3.jpg',
            ),
            GalleryCard(
              title: 'Nana & Moskov',
              location: 'Kuningan',
              rating: 4.5,
              detailPage: DetailPage4(
                title: 'Nana & Moskov',
                location: 'Kuningan',
                rating: 4.5,
              ),
              imagePath: 'lib/assets/images/4/Galeri1.jpg',
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.blue),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag, color: Colors.blue),
            label: 'Package',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on, color: Colors.blue),
            label: 'Location',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.image, color: Colors.blue),
            label: 'Gallery',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle, color: Colors.blue),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.lightBlueAccent,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
