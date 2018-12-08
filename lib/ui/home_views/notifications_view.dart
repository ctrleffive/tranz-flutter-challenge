import 'package:flutter/material.dart';
import 'package:transaction/ui/partials/notification_item.dart';
import 'package:transaction/ui/partials/single_product_mini.dart';

class NotificationsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Notifications', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        )),
                        Text('YOU HAVE 5 NOTIFICATIONS', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Theme.of(context).iconTheme.color.withOpacity(0.7)
                        )),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Icon(Icons.settings)
                    ),
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  NotificationItem(
                    profileImage: 'https://placeimg.com/212/206/people/1',
                    profileName: 'Chandu J S',
                    tagline: 'Bought 5 Products',
                    time: DateTime.now(),
                    items: [
                      SingleProductMini('https://placeimg.com/60/60/tech/11'),
                      SingleProductMini('https://placeimg.com/60/60/tech/12'),
                      SingleProductMini('https://placeimg.com/60/60/tech/13'),
                      SingleProductMini('https://placeimg.com/60/60/tech/14'),
                    ]
                  ),
                  NotificationItem(
                    profileImage: 'https://placeimg.com/212/206/people/2',
                    profileName: 'John Doe',
                    tagline: 'Bought 5 Products',
                    time: DateTime.now(),
                    items: [
                      SingleProductMini('https://placeimg.com/60/60/tech/21'),
                      SingleProductMini('https://placeimg.com/60/60/tech/22'),
                    ]
                  ),
                  NotificationItem(
                    profileImage: 'https://placeimg.com/212/206/people/3',
                    profileName: 'Anil Bharkar',
                    tagline: 'Bought 5 Products',
                    time: DateTime.now(),
                    items: [
                      SingleProductMini('https://placeimg.com/60/60/tech/31'),
                      SingleProductMini('https://placeimg.com/60/60/tech/32'),
                      SingleProductMini('https://placeimg.com/60/60/tech/33'),
                    ]
                  ),
                  NotificationItem(
                    profileImage: 'https://placeimg.com/212/206/people/4',
                    profileName: 'Rohit Sharma',
                    tagline: 'Bought 5 Products',
                    time: DateTime.now(),
                    items: [
                      SingleProductMini('https://placeimg.com/60/60/tech/41'),
                      SingleProductMini('https://placeimg.com/60/60/tech/42'),
                      SingleProductMini('https://placeimg.com/60/60/tech/43'),
                    ]
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}