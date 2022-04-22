import 'package:flutter/material.dart';
import 'package:secondapp/pages/CartPage.dart';
import 'package:secondapp/pages/categoryPage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TabbedPages extends StatefulWidget {
  const TabbedPages({Key? key}) : super(key: key);

  @override
  State<TabbedPages> createState() => _TabbedPagesState();
}

class _TabbedPagesState extends State<TabbedPages> {
  int _selectedIndex = 0;
  String regno = "";
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    CategoryPage(),
    Cartpage(),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  getRegNo() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      regno = prefs.getString('regno')!;
    });
  }

  removeRegNo() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('regno');
    Navigator.pushNamed(context, '/login');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getRegNo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(_selectedIndex == 1 ? "Cart" : "Quick Foodie"),
        actions: [
          PopupMenuButton(
              icon: Icon(Icons.account_box),
              itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Text(regno),
                      value: 1,
                    ),
                    PopupMenuItem(
                      child: Text("Log Out"),
                      value: 1,
                      onTap: () {
                        removeRegNo();
                      },
                    ),
                  ])
        ],
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            label: 'Cart',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
