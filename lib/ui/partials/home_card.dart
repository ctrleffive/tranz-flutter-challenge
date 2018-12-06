import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  final String month;
  final String itemLabel;
  final String tagline;

  HomeCard({
    @required this.icon,
    @required this.color,
    @required this.itemLabel,
    @required this.month,
    @required this.tagline,
    @required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Icon(this.icon, size: 25, color: this.color),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(this.title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10, color: Colors.black54)),
                  Text(this.month, style: TextStyle(fontSize: 8, color: Colors.black54)),
                  Divider(height: 10, color: Colors.black),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 95,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(this.itemLabel, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                        Text(this.tagline, style: TextStyle(fontSize: 10, color: Colors.black54), textAlign: TextAlign.right),
                      ],
                    ),
                  )
                ],
              )
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
    );
  }
}