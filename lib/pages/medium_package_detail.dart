import 'package:flutter/material.dart';
import 'homepage.dart';
import 'gallery_page.dart';
import 'profile.dart';
import 'package:login_app/pages/package_listing_page.dart';
import 'reservation_form_page.dart';
import 'package:google_fonts/google_fonts.dart';

class MediumPackageDetailPage extends StatefulWidget {
  @override
  _MediumPackageDetailPageState createState() =>
      _MediumPackageDetailPageState();
}

class _MediumPackageDetailPageState extends State<MediumPackageDetailPage> {
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
              'lib/assets/images/header_package_medium.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: 200.0,
            ),
            SizedBox(height: 20.0),
            Image.asset(
              'lib/assets/images/medium_package_image.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: 300.0,
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Paket Medium',
                style: GoogleFonts.lato(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Rp. 13.000.000,-',
                style: GoogleFonts.lato(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DetailItem(detail: 'Pelaminan 6m'),
                  DetailItem(detail: 'Rangkaian bunga fresh flowers'),
                  DetailItem(detail: 'Mini garden / Taman depan pelaminan'),
                  DetailItem(detail: 'Gapura masuk'),
                  DetailItem(detail: 'Meja tamu 1'),
                  DetailItem(detail: 'Kotak uang 2 buah'),
                  DetailItem(detail: 'Handbucket 1 buah'),
                  DetailItem(detail: 'Setting akad nikah ( 6 kursi + 1 meja )'),
                  DetailItem(detail: 'Welcome sign in'),
                  DetailItem(detail: 'Lighting dekorasi'),
                  DetailItem(detail: 'Tenda kecil 2 set ( 5 m x 10 m )'),
                  DetailItem(detail: 'Tenda kecil polos 1 set ( 5 m x 10 m )'),
                  DetailItem(detail: 'Tirai tenda 20 m'),
                  DetailItem(detail: 'Kursi plastik 150'),
                  DetailItem(detail: 'Sarung kursi 100'),
                  DetailItem(detail: 'Lampu tenda + Disel 3 malam'),
                  DetailItem(detail: 'Karpet 2 set'),
                  DetailItem(detail: 'Blower uap 1'),
                  DetailItem(
                      detail:
                          'Meja prasmanan rolltop 1 set ( Piring, sendok, dan garpu 100 )'),
                  DetailItem(detail: 'Alat dapur + Tukang adang'),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ReservationFormPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
              child: Text('Pesan Sekarang', style: GoogleFonts.lato()),
            ),
            SizedBox(height: 20.0),
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
        selectedItemColor: Colors.lightBlueAccent,
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
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4.0),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.lightBlueAccent.withOpacity(0.2),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          Icon(Icons.check, color: Colors.blue),
          SizedBox(width: 8.0),
          Expanded(
            child: Text(
              detail,
              style: GoogleFonts.lato(
                fontSize: 16.0,
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MediumPackageDetailPage(),
  ));
}
