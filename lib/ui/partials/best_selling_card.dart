import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BestSellingCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text('Best-Selling', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            ),
            Container(
              height: 97,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <int>[32, 54, 67].map((int number){
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 20),
                    child: ClipRRect(
                      clipBehavior: Clip.antiAlias,
                      borderRadius: BorderRadius.circular(5),
                      child: Stack(
                        children: <Widget>[
                          Image(
                            image: CachedNetworkImageProvider('https://placeimg.com/100/97/tech/$number'),
                            fit: BoxFit.cover,
                            width: 100,
                          ),
                          Text('$number', style: TextStyle(color: Colors.white))
                        ],
                      ),
                    ),
                  );
                }).toList(),
                shrinkWrap: true,
                primary: true,
              ),
            ),
          ],
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