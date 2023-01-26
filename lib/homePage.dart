import 'package:flutter/material.dart';
import 'constants.dart';
import 'dummydata.dart';
import 'pages/customerSupport.dart';
import 'pages/manageDrivers.dart';
import 'pages/manageInventory.dart';
import 'pages/manageMenu.dart';
import 'pages/manageResInfo.dart';
import 'pages/currentOrders.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    CurrentOrders(),
    ManageMenu(),
    ManageOrdersPage(),
    ManageDrivers(),
    CustomerSupportPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurant App'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant),
            label: 'Manage Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_car),
            label: 'Manage Drivers',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            label: 'Customer Support',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: appTheme.accentColor,
        onTap: _onItemTapped,
        unselectedItemColor: appTheme.primaryColor,
      ),
    );
  }
}

class CurrentOrders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: foodData.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.0,
      ),
      itemBuilder: (BuildContext context, int index) {
        return FoodCard(foodData[index]);
      },
    );
  }
}

class FoodCard extends StatelessWidget {
  final Food food;

  FoodCard(this.food);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.network(
            food.imageUrl,
            fit: BoxFit.cover,
            height: 120,
            width: double.infinity,
          ),
          Text(
            food.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            height: 15,
            child: Text(
              food.description,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Expanded(
            child: Text(
              '${food.price}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
