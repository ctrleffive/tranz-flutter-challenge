import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class SingleProductMini extends StatelessWidget {
  final String thumb;

  SingleProductMini(this.thumb);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: ClipRRect(
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.circular(5),
        child: Image(
          image: CachedNetworkImageProvider(this.thumb),
          fit: BoxFit.cover,
          width: 60,
        ),
      ),
    );
  }
}