import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../models/products_model.dart';

class ProductCardWidget extends StatelessWidget {
  final Product product;
  const ProductCardWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                  child: CachedNetworkImage(
                    imageUrl: product.image,
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  right: 8,
                  top: 4,
                  child: IconButton(
                    onPressed: () {},
                    icon: Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6),
                        child: Image.asset('assets/love.png'),
                      ),
                    )
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                product.title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                "EGP ${product.price.toStringAsFixed(0)}",
                style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),
              ),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Text(
                    "Review (${product.rating})",
                    style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12),
                  ),
                  Icon(Icons.star, size: 16, color: Colors.orange),
                ],
              ),
            ),
          ],
        ),
      ),
        Positioned(
          right: 9,
          bottom: 3,
          child: IconButton(
            onPressed: () {},
            icon: Image.asset('assets/plus.png'),
          ),
        ),
      ],
    );
  }
}
