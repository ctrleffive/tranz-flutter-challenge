import 'package:flutter/material.dart';
import 'package:transaction/ui/partials/styles.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                        )
                      ],
                    ),
                    // TODO: Need graph also in dashboard
                    gradientDecoration,
                  ],
                ),
              ),
            ),
            // Padding()
          ],
        ),
      ),
    );
  }
}