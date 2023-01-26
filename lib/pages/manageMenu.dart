import 'package:flutter/material.dart';

class ManageMenu extends StatefulWidget {
  @override
  _ManageMenuState createState() => _ManageMenuState();
}

class _ManageMenuState extends State<ManageMenu> {
  List<String> _menuItems = ["Pizza", "Burger", "Fries", "Salad", "Soup"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: _menuItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_menuItems[index]),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      setState(() {
                        _menuItems.removeAt(index);
                      });
                    },
                  ),
                );
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Add new menu item",
                  border: InputBorder.none,
                  suffixIcon: IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      setState(() {
                        _menuItems.add('text');
                      });
                    },
                  ),
                ),
                onChanged: (text) {
// handle text changes
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
