import 'package:flutter/material.dart';
import 'package:transaction/ui/partials/home_card.dart';
import 'package:transaction/ui/partials/styles.dart';

class DashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async => await Future.delayed(Duration(seconds: 1)),
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 0,
              top: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height / 2,
                color: Color.fromRGBO(72, 229, 201, 1),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      gradient: appGradient
                    ),
                    child: SafeArea(
                      child: Stack(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text('Welcome Back, Chandu', style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 20,
                                    )),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Icon(Icons.settings, color: Colors.white)
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('TOTAL INCOME', style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white70,
                                      fontSize: 12,
                                    )),
                                    Text('245,000,000', style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 28,
                                    )),
                                    SizedBox(height: 10),
                                    Text('ACCRETION', style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white70,
                                      fontSize: 12,
                                    )),
                                    Row(
                                      children: <Widget>[
                                        Text('5%', style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 20,
                                        )),
                                        Icon(Icons.arrow_drop_down, color: Colors.redAccent, size: 40),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          // TODO: Need graph also in dashboard
                          gradientDecoration,
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
                      child: Column(
                        children: <Widget>[
                          HomeCard(
                            icon: Icons.star,
                            color: Colors.amber,
                            title: 'BEST PRODUCT SELLER',
                            month: 'NOVEMBER',
                            itemLabel: 'Macbook Pro 2018',
                            tagline: '40 ITEMS',
                          ),
                          HomeCard(
                            icon: Icons.shopping_basket,
                            color: Colors.greenAccent,
                            title: 'TOTAL ITEMS SOLD',
                            month: 'NOVEMBER',
                            itemLabel: '143 ITEMS',
                            tagline: 'BEST OF MONTH',
                          ),
                          HomeCard(
                            icon: Icons.stars,
                            color: Colors.redAccent,
                            title: 'BEST PRODUCT SELLER',
                            month: 'NOVEMBER',
                            itemLabel: 'Macbook Pro 2018',
                            tagline: '40 ITEMS',
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}