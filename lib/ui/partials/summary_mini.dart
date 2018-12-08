import 'package:flutter/material.dart';
import 'package:transaction/ui/partials/styles.dart';

class SummaryMini extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;
  final bool colored;

  SummaryMini({
    this.title,
    this.icon,
    this.value,
    this.colored = false
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
          child: Column(
            children: <Widget>[
              Icon(this.icon, size: 40, color: this.colored ? Theme.of(context).accentColor : Theme.of(context).primaryColor),
              SizedBox(height: 10),
              Text(this.title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: this.colored ? Colors.white70 : Color.fromRGBO(68, 68, 68, 0.7))),
              SizedBox(height: 15),
              Text(this.value, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: this.colored ? Colors.white : null)),
            ],
          )
        ),
        width: (MediaQuery.of(context).size.width / 2) - 30,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          gradient: this.colored ? appGradient : null,
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