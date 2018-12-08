import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:transaction/ui/partials/single_product_mini.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class NotificationItem extends StatelessWidget {
  final String profileImage;
  final String profileName;
  final String tagline;
  final DateTime time;
  final List<Widget> items;

  NotificationItem({
    this.profileImage,
    this.profileName,
    this.tagline,
    this.time,
    this.items
  });

  @override
  Widget build(BuildContext context) {
    if (this.items.length > 3) {
      this.items.removeRange(3, this.items.length);
      this.items.add(
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Center(
            child: Text('+${this.items.length - 2}', style: TextStyle(fontWeight: FontWeight.bold))
          ),
        )
      );
    }

    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: Slidable(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 16,
                      backgroundImage: CachedNetworkImageProvider(this.profileImage)
                    ),
                    SizedBox(width: 13),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(this.profileName, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black54)),
                            Text('${this.time.hour}:${this.time.minute}', style: TextStyle(fontSize: 10, color: Colors.black54), textAlign: TextAlign.right)
                          ],
                        ),
                        Text(this.tagline, style: TextStyle(fontSize: 10, color: Colors.black54)),
                        Divider(height: 15, color: Colors.black),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: this.items,
                ),
              ],
            ),
          ),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(225, 225, 225, 0.2),
                blurRadius: 10,
                offset: Offset(0, 5)
              )
            ]
          ),
        ),
        closeOnScroll: true,
        delegate: SlidableScrollDelegate(),
        secondaryActions: <Widget>[
          SlideAction(
            child: Icon(Icons.delete, color: Colors.black26),
            closeOnTap: true,
            onTap: () {},
            decoration: BoxDecoration(
              color: Color.fromRGBO(223, 223, 223, 1),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(5),
                bottomRight: Radius.circular(5)
              )
            ),
          ),
        ],
      ),
    );
  }
}