import 'package:flutter/material.dart';
import 'package:transaction/ui/partials/single_product_mega.dart';

class MonthSection extends StatelessWidget {
  final int day;
  final String month;
  final List<SingleProductMega> items;

  MonthSection({
    this.day,
    this.items,
    this.month
  }); 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text('$day', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    SizedBox(width: 8),
                    Text(this.month, style: TextStyle(fontSize: 14, color: Color.fromRGBO(68, 68, 68, 0.5))),
                  ],
                ),
                Icon(Icons.more_horiz, color: Color.fromRGBO(68, 68, 68, 0.5), size: 30),
              ],
            ),
          ),
          Container(
            height: 250,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: this.items,
              shrinkWrap: true,
              primary: true,
            ),
          ),
        ],
      ),
    );
  }
}