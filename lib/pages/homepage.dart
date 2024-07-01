import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/pages/gallery_page.dart';
import 'package:login_app/pages/package_listing_page.dart';
import 'package:login_app/pages/profile.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Navigasi ke halaman yang sesuai
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
        // Halaman Lokasi
        break;
      case 3:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => GalleryPage()),
        );
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
          'Rifas Decoration',
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
                color: Colors.lightBlueAccent,
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
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => GalleryPage()),
                );
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
            Image.asset(
              'lib/assets/images/header.png',
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'WEDDING DECORATION SERVICE',
                style: GoogleFonts.lato(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Rifas Decoration adalah suatu perusahaan yang bergerak dalam bidang Dekorasi Pernikahan (Wedding Decoration). Selain itu, kami juga menyediakan Jasa Paket Pernikahan (Wedding Package) serta jasa Wedding Organizer dan Wedding Planner yang disebut dengan "One-Stop Wedding". Perusahaan kami telah berdiri lebih dari 5 tahun dan kami telah melayani lebih dari 1000 acara di hampir seluruh wilayah Indramayu. Kami bekerja sama dengan lebih dari 30 wedding venue di Indramayu, termasuk gedung, hotel, dan lokasi outdoor.',
                textAlign: TextAlign.justify,
                style: GoogleFonts.lato(fontSize: 16.0, color: Colors.black54),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PackageListingPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
              child: Text('Lihat Paket Dekorasi Sekarang',
                  style: GoogleFonts.lato()),
            ),
            SizedBox(height: 20.0),
            SizedBox(
              height: 200.0,
              child: Stack(
                children: [
                  PageView(
                    children: [
                      Image.asset(
                        'lib/assets/images/gallery_image_1.png',
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'lib/assets/images/gallery_image_2.png',
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'lib/assets/images/gallery_image_3.png',
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'lib/assets/images/2/Galeri12.jpg',
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'lib/assets/images/header.png',
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  Positioned(
                    right: 16.0,
                    bottom: 16.0,
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                  ),
                  Positioned(
                    left: 16.0,
                    bottom: 16.0,
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GalleryPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
              child: Text('Lihat Galeri', style: GoogleFonts.lato()),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'PACKAGE',
                style: GoogleFonts.lato(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
            ),
            PackageCard(
              imagePath: 'lib/assets/images/low_package_image.jpg',
              title: 'Low Package',
              description:
                  'Pelaminan 4m\nRangkaian bunga artificial\nMini Garden\nTirai Tenda 10 m',
              price: 'Rp. 10.000.000,-',
            ),
            PackageCard(
              imagePath: 'lib/assets/images/medium_package_image.png',
              title: 'Medium Package',
              description:
                  'Pelaminan 6m\nRangkaian bunga fresh flower\nMini Garden\nTirai Tenda 20 m',
              price: 'Rp. 13.000.000,-',
            ),
            PackageCard(
              imagePath: 'lib/assets/images/high_package_image.png',
              title: 'High Package',
              description:
                  'Pelaminan 8m\nRangkaian bunga fresh flower\nMini Garden\nTirai Tenda Jumbo dan Mini',
              price: 'Rp. 25.000.000,-',
            ),
            PackageCard(
              imagePath: 'lib/assets/images/low_package_image.jpg',
              title: 'Custom',
              description:
                  'Pelaminan 4m/6m/8m\nPilihan Rangkaian Bunga\nKursi Meja\nTirai Tenda 10m/20m\n...',
              price: '',
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
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

class PackageCard extends StatelessWidget {
  final String title;
  final String description;
  final String price;
  final String imagePath;

  PackageCard({
    required this.title,
    required this.description,
    required this.price,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imagePath,
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10.0),
            Text(
              title,
              style: GoogleFonts.lato(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              description,
              style: GoogleFonts.lato(
                fontSize: 16.0,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              price,
              style: GoogleFonts.lato(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.lightBlueAccent,
              ),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => PackageListingPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
              child: Text('Lihat Selengkapnya', style: GoogleFonts.lato()),
            ),
          ],
        ),
      ),
    );
  }
}
