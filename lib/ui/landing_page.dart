import 'package:flutter/material.dart';
import 'package:transaction/ui/inner_page.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(72, 229, 201, 1),
                  Color.fromRGBO(0, 156, 166, 1),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/landing_page_logo.png'),
                    width: 202,
                    height: 160,
                  ),
                  SizedBox(height: 20),
                  ClipRRect(
                    clipBehavior: Clip.antiAlias,
                    borderRadius: BorderRadius.circular(100),
                    child: FlatButton(
                      padding: EdgeInsets.fromLTRB(80, 12, 80, 12),
                      child: Text('START', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      color: Theme.of(context).accentColor,
                      onPressed: () => Navigator.push(context, MaterialPageRoute(
                        builder: (_) => InnerPage()
                      )),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 30,
            bottom: 30,
            child: Image(
              image: AssetImage('assets/landing_page_decoration.png'),
              width: 130,
              height: 86,
            ),
          ),
        ],
      ),
    );
  }
}