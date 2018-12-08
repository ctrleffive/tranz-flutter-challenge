import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class SingleProductMega extends StatelessWidget {
  final String title;
  final String thumb;

  SingleProductMega({
    this.thumb,
    this.title
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(this.title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          SizedBox(height: 10),
          ClipRRect(
            clipBehavior: Clip.antiAlias,
            borderRadius: BorderRadius.circular(10),
            child: Image(
              image: CachedNetworkImageProvider(this.thumb),
              fit: BoxFit.cover,
              height: 212,
            ),
          ),
        ],
      ),
    );
  }
}