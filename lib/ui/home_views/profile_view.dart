import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:transaction/ui/partials/best_selling_card.dart';
import 'package:transaction/ui/partials/summary_card.dart';
import 'package:transaction/ui/partials/summary_mini.dart';

class ProfileView extends StatelessWidget {
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
                        Text('Profile', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        )),
                        Text('HOW ARE YOU, CHANDU?', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Theme.of(context).iconTheme.color.withOpacity(0.7)
                        )),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: CircleAvatar(
                        backgroundColor: Colors.black12,
                        backgroundImage: CachedNetworkImageProvider('https://placeimg.com/200/200/people/100'),
                      )
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                child: Column(
                  children: <Widget>[
                    SummaryCard(
                      successTotal: 4577,
                      failTotal: 203,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SummaryMini(
                          icon: Icons.attach_money,
                          colored: true,
                          title: 'INCOME',
                          value: '16,23,000'
                        ),
                        SummaryMini(
                          icon: Icons.trending_up,
                          title: 'INCREASE',
                          value: '23%'
                        ),
                      ],
                    ),
                    BestSellingCard()
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