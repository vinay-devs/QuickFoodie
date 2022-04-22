import 'package:flutter/material.dart';
import 'package:secondapp/pages/homePage.dart';
import '../items/specialItems.dart';
import '../items/mealsItem.dart';
import '../button/bottomNavigationBar.dart';

class category extends StatefulWidget {
  const category({Key? key}) : super(key: key);

  @override
  State<category> createState() => _categoryState();
}

class _categoryState extends State<category> {
  int _selectIndex = 0;
  void _ontapped(int index) {
    setState(() {
      _selectIndex = index;
    });
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => (homePage()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quick Foodie"),
      ),
      body:
          // SingleChildScrollView(
          //   child:
          // Container(
          // height: 300,
          //child:
          SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Explore Menu",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Text(
              "Special Items",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              child: specialItems(),
              height: 300,
            ),
            Padding(
              padding: const EdgeInsets.all(0),
              child: Text(
                "Meals",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
            ),
            // mealsItem(),
          ],
        ),
      ),
      // ),

      //),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'About Us',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.chat),
          //   label: 'Chats',
          // ),
        ],
        currentIndex: _selectIndex,
        onTap: _ontapped,
      ),
    );
  }
}
