import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lastest_broo/controllers/profile_controler.dart';
import 'package:lastest_broo/view/dashboard.dart';
import 'package:lastest_broo/view/home.dart';
import 'package:lastest_broo/view/sell.dart';

class Adding extends StatefulWidget {
  Adding({Key? key}) : super(key: key);

  @override
  _AddingState createState() => _AddingState();
}

class _AddingState extends State<Adding> {
  final ImagePickerController controller = Get.put(ImagePickerController());
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(0, 214, 210, 210),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Obx(() {
              return ClipRRect(
                borderRadius: BorderRadius.circular(75),
                child: Container(
                  width: 150,
                  height: 150,
                  color: Colors.grey,
                  child: controller.selectedImage.value != null
                      ? Image.file(controller.selectedImage.value!,
                          fit: BoxFit.cover)
                      : Image.asset('assets/images/logo_petstoree.png',
                          fit: BoxFit.cover),
                ),
              );
            }),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () => controller.pickImageFromCamera(),
                    child: Text('Pick from Camera'),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => controller.pickImageFromGallery(),
                  child: Text('Pick from Gallery'),
                ),
              ],
            ),
          ],
        ),
      ),
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
          switch (index) {
            case 0:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
              break;

            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SellPage()),
              );
              break;

            case 3:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Dashboard()),
              );
              break;
          }
        },
      ),
    );
  }
}
