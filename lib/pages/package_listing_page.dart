import 'package:flutter/material.dart';
import 'homepage.dart';
import 'gallery_page.dart';
import 'profile.dart';
import 'low_package_detail.dart';
import 'medium_package_detail.dart';
import 'high_package_detail.dart';
import 'custom_package_detail.dart';
import 'package:google_fonts/google_fonts.dart';

class PackageListingPage extends StatefulWidget {
  @override
  _PackageListingPageState createState() => _PackageListingPageState();
}

class _PackageListingPageState extends State<PackageListingPage> {
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
            Image.asset('lib/assets/images/header_package.png',
                fit: BoxFit.cover),
            PackageCard(
              title: 'Low Package',
              description:
                  'Pelaminan 4m\nRangkaian bunga artificial\nMini Garden\nTirai Tenda 10 m',
              price: 'Rp. 10.000.000,-',
              imagePath: 'lib/assets/images/low_package_image.jpg',
              detailPage: LowPackageDetailPage(),
            ),
            PackageCard(
              title: 'Medium Package',
              description:
                  'Pelaminan 6m\nRangkaian bunga fresh flower\nMini Garden\nTirai Tenda 20 m',
              price: 'Rp. 13.000.000,-',
              imagePath: 'lib/assets/images/medium_package_image.png',
              detailPage: MediumPackageDetailPage(),
            ),
            PackageCard(
              title: 'High Package',
              description:
                  'Pelaminan 8m\nRangkaian bunga fresh flower\nMini Garden\nTirai Tenda Jumbo dan Mini',
              price: 'Rp. 25.000.000,-',
              imagePath: 'lib/assets/images/high_package_image.png',
              detailPage: HighPackageDetailPage(),
            ),
            PackageCard(
              title: 'Custom',
              description:
                  'Pelaminan 4m/6m/8m\nPilihan Rangkaian Bunga\nKursi Meja\nTirai Tenda 10m/20m\n...',
              price: '',
              imagePath: 'lib/assets/images/low_package_image.jpg',
              detailPage: CustomPackageDetailPage(),
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

class PackageCard extends StatelessWidget {
  final String title;
  final String description;
  final String price;
  final String imagePath;
  final Widget detailPage;

  PackageCard({
    required this.title,
    required this.description,
    required this.price,
    required this.imagePath,
    required this.detailPage,
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
            Container(
              height: 150.0,
              width: double.infinity,
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              title,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              description,
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 10.0),
            Text(
              price,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
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
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: PackageListingPage(),
  ));
}
