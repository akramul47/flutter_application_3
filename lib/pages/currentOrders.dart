import 'package:flutter/material.dart';

class Order {
  final int id;
  final String customerName;
  final DateTime orderDate;
  final String status;
  final double total;
  final List<OrderItem> items;

  Order({
    required this.id,
    required this.customerName,
    required this.orderDate,
    required this.status,
    required this.total,
    required this.items,
  });
}

class OrderItem {
  final int quantity;
  final String name;

  OrderItem({required this.quantity, required this.name});
}

class ManageOrdersPage extends StatelessWidget {
  final List<Order> orders = [
    Order(
      id: 1,
      customerName: 'John Doe',
      orderDate: DateTime.now(),
      status: 'Completed',
      total: 15.99,
      items: [
        OrderItem(quantity: 1, name: 'Pizza Margherita'),
        OrderItem(quantity: 2, name: 'Biriyani'),
      ],
    ),
    Order(
      id: 2,
      customerName: 'Jane Smith',
      orderDate: DateTime.now(),
      status: 'In Progress',
      total: 24.99,
      items: [
        OrderItem(quantity: 3, name: 'Sushi Platter'),
        OrderItem(quantity: 1, name: 'Pad Thai'),
      ],
    ),
    Order(
      id: 3,
      customerName: 'Bob Johnson',
      orderDate: DateTime.now(),
      status: 'Cancelled',
      total: 12.99,
      items: [
        OrderItem(quantity: 2, name: 'Fish Curry'),
        OrderItem(quantity: 1, name: 'Palau'),
      ],
    ),
// Add more orders here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: orders.length,
        itemBuilder: (BuildContext context, int index) {
          final order = orders[index];
          return ExpansionTile(
            title: Text(
                'Order #${order.id} - ${order.customerName} - ${order.total}'),
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Customer Name: ${order.customerName}"),
                    Text("Order Date: ${order.orderDate}"),
                    Text("Status: ${order.status}"),
                    Text("Total: ${order.total}"),
                    Column(
                      children: order.items
                          .map((item) =>
                              Text("- ${item.quantity} x ${item.name}"))
                          .toList(),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
