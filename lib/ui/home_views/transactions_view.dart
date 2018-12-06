import 'package:flutter/material.dart';

class TransactionsView extends StatelessWidget {
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
                        Text('Transactions', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        )),
                        Text('12 TRANSACTIONS TODAY', style: TextStyle(
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
            ],
          ),
        ),
      ),
    );
  }
}