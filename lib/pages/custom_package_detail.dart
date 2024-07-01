import 'package:flutter/material.dart';
import 'homepage.dart';
import 'gallery_page.dart';
import 'profile.dart';
import 'package:login_app/pages/package_listing_page.dart';
import 'reservation_form_page.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomPackageDetailPage extends StatefulWidget {
  @override
  _CustomPackageDetailPageState createState() =>
      _CustomPackageDetailPageState();
}

class _CustomPackageDetailPageState extends State<CustomPackageDetailPage> {
  int _selectedIndex = 1;

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
          'Paket Dekorasi',
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
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text('Paket'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => PackageListingPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Lokasi'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.image),
              title: Text('Galeri'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => GalleryPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profil'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'lib/assets/images/header_package_custom.png', // Replace with your header image path
              fit: BoxFit.cover,
            ),
            SizedBox(height: 30.0), // Add spacing between header and details

            Image.asset(
                'lib/assets/images/header.png'), // Replace with your image path
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Paket Murah Meriah',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Rp. 10.000.000,-',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DetailItem(detail: 'Pelaminan 4m'),
                  DetailItem(detail: 'Rangkaian bunga artificial'),
                  DetailItem(detail: 'Mini Garden'),
                  DetailItem(detail: 'Tirai Tenda 10 m'),
                  // Add more package details here
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ReservationFormPage()),
                );
              },
              child: Text('Pesan Sekarang'),
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
            label: 'Paket',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on, color: Colors.blue),
            label: 'Lokasi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.image, color: Colors.blue),
            label: 'Galeri',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle, color: Colors.blue),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}

class DetailItem extends StatelessWidget {
  final String detail;

  DetailItem({required this.detail});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Icon(Icons.check, color: Colors.blue),
          SizedBox(width: 8.0),
          Expanded(
            child: Text(
              detail,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: CustomPackageDetailPage(),
  ));
}
