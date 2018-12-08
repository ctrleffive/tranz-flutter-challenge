import 'package:flutter/material.dart';

class SummaryCard extends StatelessWidget {
  final int successTotal;
  final int failTotal;

  SummaryCard({
    this.successTotal,
    this.failTotal
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Text('${this.successTotal + this.failTotal}', style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
              )),
              Text('TOTAL TRANSACTIONS', style: TextStyle(fontSize: 12, color: Color.fromRGBO(68, 68, 68, 0.7))),
              Divider(color: Colors.black.withOpacity(0.07), height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.green.withOpacity(0.3),
                          shape: BoxShape.circle
                        ),
                        padding: EdgeInsets.all(7),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle
                          ),
                          padding: EdgeInsets.all(6),
                        ),
                      ),
                      SizedBox(height: 6),
                      Text('${this.successTotal}', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Color.fromRGBO(68, 68, 68, 0.7))),
                      Text('Successful Transactions', style: TextStyle(fontSize: 10, color: Color.fromRGBO(68, 68, 68, 0.7)))
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.redAccent.withOpacity(0.3),
                          shape: BoxShape.circle
                        ),
                        padding: EdgeInsets.all(7),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.redAccent,
                            shape: BoxShape.circle
                          ),
                          padding: EdgeInsets.all(6),
                        ),
                      ),
                      SizedBox(height: 6),
                      Text('${this.failTotal}', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Color.fromRGBO(68, 68, 68, 0.7))),
                      Text('Failed Transactions', style: TextStyle(fontSize: 10, color: Color.fromRGBO(68, 68, 68, 0.7)))
                    ],
                  )
                ],
              )
            ],
          )
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