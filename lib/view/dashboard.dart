import 'package:flutter/material.dart';
import 'package:lastest_broo/view/adding.dart';
import 'package:lastest_broo/view/sell.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int currentIndex = 3;

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: const Color.fromARGB(238, 247, 245, 240),
      body: ListView(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: InkWell(
              onTap: () {
                // Tambahkan kode yang harus dijalankan ketika gambar/logo diklik
                Navigator.of(context).pushNamed('/webViewPage');
              },
              child: Image.asset(
                'assets/images/logo_petstoree.png',
                height: 150, // Sesuaikan tinggi sesuai kebutuhan
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 5),
          _message(),
          SizedBox(height: 5),
          _activeAds(),
          SizedBox(height: 5),
          _address(),
          SizedBox(height: 5),
          _company(),
          SizedBox(height: 5),
          _card(),
          SizedBox(height: 25),
          _logout(),
          SizedBox(height: 90),
          _settings(),
          SizedBox(height: 5),
          _terms(),
          SizedBox(height: 5),
          _about(),
          SizedBox(height: 50),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.brown,
        unselectedItemColor: Colors.grey,
        currentIndex: currentIndex,
        onTap: (int index) {
          switch (index) {
            case 0:
              // Navigate back to HomePage when the "Home" icon is tapped
              Navigator.popUntil(context, ModalRoute.withName('/home'));
              break;

            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Adding()),
              );
              break;
            // You can add similar cases for other navigation items if needed
            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SellPage()),
              );
              break;
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_3_outlined),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Container _about() {
    return Container(
      height: 50,
      width: 230,
      margin: EdgeInsets.only(top: 10, left: 20, right: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.start, // Align text to the left
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'About the app',
              style: TextStyle(
                color: Colors.brown,
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _terms() {
    return Container(
      height: 50,
      width: 230,
      margin: EdgeInsets.only(top: 10, left: 20, right: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.start, // Align text to the left
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Terms of use',
              style: TextStyle(
                color: Colors.brown,
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _settings() {
    return Container(
      height: 50,
      width: 230,
      margin: EdgeInsets.only(top: 10, left: 20, right: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.start, // Align text to the left
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Settings',
              style: TextStyle(
                color: Colors.brown,
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _logout() {
    return Container(
      height: 50,
      width: 230,
      margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
      decoration: BoxDecoration(
        color: Color.fromARGB(94, 167, 88, 24),
        borderRadius: BorderRadius.circular(25),
      ),
      child: const Center(
        child: Text(
          'Log out',
          style: TextStyle(
            color: Colors.brown,
            fontWeight: FontWeight.w500,
            fontSize: 15,
          ),
        ),
      ),
    );
  }

  Container _card() {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 20, right: 20),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.11),
            blurRadius: 40,
            spreadRadius: 0.0,
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: EdgeInsets.all(20),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Master Card             ' + '             Aison Feron',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.normal,
            ),
          ),
          SizedBox(height: 10), // Add spacing between the two text elements
          Text(
            '******7890',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.normal,
            ),
          ),
          SizedBox(height: 10), // Add spacing between the two text elements
          Text(
            'Validity 08/2025             ' + '            code: ***',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }

  Container _company() {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 20, right: 20),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.11),
          blurRadius: 40,
          spreadRadius: 0.0,
        )
      ]),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: 'About your company',
          contentPadding: EdgeInsets.all(15),
          suffixIcon: const Padding(
            padding: EdgeInsets.all(8),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  Container _address() {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 20, right: 20),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.11),
          blurRadius: 40,
          spreadRadius: 0.0,
        )
      ]),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: 'Address',
          contentPadding: EdgeInsets.all(15),
          suffixIcon: const Padding(
            padding: EdgeInsets.all(8),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  Container _activeAds() {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 20, right: 20),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.11),
          blurRadius: 40,
          spreadRadius: 0.0,
        )
      ]),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: 'Active ads                       Inactive ads',
          contentPadding: EdgeInsets.all(15),
          suffixIcon: const Padding(
            padding: EdgeInsets.all(8),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  Container _message() {
    return Container(
      margin: const EdgeInsets.only(top: 10, left: 20, right: 20),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.11),
          blurRadius: 40,
          spreadRadius: 0.0,
        )
      ]),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: 'Message',
          contentPadding: EdgeInsets.all(15),
          suffixIcon: const Padding(
            padding: EdgeInsets.all(8),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: Color.fromARGB(0, 214, 210, 210),
      elevation: 0.0,
      centerTitle: true,
    );
  }
}
