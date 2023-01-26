import 'package:flutter/material.dart';

class CustomerSupportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Contact Us',
              style: Theme.of(context).textTheme.headline5,
            ),
            SizedBox(height: 16),
            Text('Email us at support@example.com'),
            SizedBox(height: 16),
            Text('Call us at +1 555 555 5555'),
            SizedBox(height: 16),
            Text('Visit us at 123 Main St, Anytown USA'),
            SizedBox(height: 16),
            Text(
              'Frequently Asked Questions',
              style: Theme.of(context).textTheme.headline5,
            ),
            SizedBox(height: 16),
            Text('Q: How do I track my order?'),
            SizedBox(height: 8),
            Text(
                'A: You can track your order by logging into your account and viewing your order history. You will also receive updates via email and text message.'),
            SizedBox(height: 16),
            Text('Q: Can I change or cancel my order?'),
            SizedBox(height: 8),
            Text(
                'A: You can change or cancel your order as long as it has not been processed. Please contact our customer support team as soon as possible.'),
            SizedBox(height: 16),
            Text('Q: How do I return or exchange an item?'),
            SizedBox(height: 8),
            Text(
                'A: You can initiate a return or exchange by logging into your account and selecting the item you would like to return or exchange. Please make sure that the item is in new condition and within the return or exchange policy.'),
            SizedBox(height: 16),
            Text('Q: How can I contact customer support?'),
            SizedBox(height: 8),
            Text(
                'A: You can contact customer support by email at support@example.com, by phone at +1 555 555 5555, or by visiting our physical location at 123 Main St, Anytown USA.'),
          ],
        ),
      ),
    );
  }
}
