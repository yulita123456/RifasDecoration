import 'package:flutter/material.dart';
import 'package:login_app/pages/gallery_page.dart';
import 'package:login_app/pages/package_listing_page.dart';

import 'homepage.dart'; // Import halaman HomePage untuk navigasi

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AccountScreen(),
    );
  }
}

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back action
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.blue,
                      child: Icon(Icons.person, size: 40, color: Colors.white),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Siti Aminah',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text('sitiaminah@gmail.com'),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                'General Settings',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ListTile(
                leading: Icon(Icons.person, color: Colors.blue),
                title: Text('Profile'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.lock, color: Colors.blue),
                title: Text('Privacy'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.notifications, color: Colors.blue),
                title: Text('Notifications'),
                onTap: () {},
              ),
              SizedBox(height: 20),
              Text(
                'Account Settings',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ListTile(
                leading: Icon(Icons.email, color: Colors.blue),
                title: Text('Email'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.lock, color: Colors.blue),
                title: Text('Password'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.phone, color: Colors.blue),
                title: Text('Phone'),
                onTap: () {},
              ),
              SizedBox(height: 20),
              Text(
                'Help & Support',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ListTile(
                leading: Icon(Icons.help, color: Colors.blue),
                title: Text('FAQ'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.contact_support, color: Colors.blue),
                title: Text('Contact Us'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.logout, color: Colors.blue),
                title: Text('Logout'),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
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
        currentIndex: 4, // Index 4 untuk menandakan halaman Profile
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          // Navigasi berdasarkan indeks yang dipilih
          switch (index) {
            case 0:
              // Halaman Home
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
              break;
            case 1:
              // Halaman Paket
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => PackageListingPage()),
              );
              break;
            case 2:
              // Halaman Lokasi
              // Tambahkan kode navigasi ke halaman Shop jika diperlukan
              break;
            case 3:
              // Halaman Gallery
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => GalleryPage()),
              );
              break;
            case 4:
              // Halaman Profile, tidak perlu navigasi karena sudah berada di halaman Profile
              break;
          }
        },
      ),
    );
  }
}
