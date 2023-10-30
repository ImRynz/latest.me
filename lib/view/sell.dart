import 'package:flutter/material.dart';
import 'package:lastest_broo/view/adding.dart';
import 'package:lastest_broo/view/dashboard.dart';
import 'package:lastest_broo/view/home.dart';

class SellPage extends StatefulWidget {
  @override
  _SellPageState createState() => _SellPageState();
}

class _SellPageState extends State<SellPage> {
  int currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sell Page'),
      ),
      body: content(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.brown,
        unselectedItemColor: Colors.grey,
        currentIndex: currentIndex,
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
        onTap: (int index) {
          if (index != currentIndex) {
            setState(() {
              currentIndex = index;
            });
            switch (index) {
              case 0:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
                break;

              case 1:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Adding()),
                );
                break;

              case 3:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Dashboard()),
                );
                break;
            }
          }
        },
      ),
    );
  }

  Widget content() {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/webViewPage');
        },
        child: const Text("open webview"),
      ),
    );
  }
}
