import 'package:flutter/material.dart';
import 'package:transaction/ui/partials/month_section.dart';
import 'package:transaction/ui/partials/single_product_mega.dart';

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
              MonthSection(
                day: 17,
                month: 'NOVEMBER',
                items: [
                  SingleProductMega(title: 'Macbook Pro 2018', thumb: 'https://placeimg.com/212/206/tech/1'),
                  SingleProductMega(title: 'Laptop', thumb: 'https://placeimg.com/212/206/tech/2'),
                  SingleProductMega(title: 'iPhone SE', thumb: 'https://placeimg.com/212/206/tech/3'),
                ]
              ),
              MonthSection(
                day: 18,
                month: 'NOVEMBER',
                items: [
                  SingleProductMega(title: 'iPhone SE', thumb: 'https://placeimg.com/212/206/tech/6'),
                  SingleProductMega(title: 'Macbook Pro 2018', thumb: 'https://placeimg.com/212/206/tech/4'),
                  SingleProductMega(title: 'Laptop', thumb: 'https://placeimg.com/212/206/tech/5'),
                ]
              ),
            ],
          ),
        ),
      ),
    );
  }
}