import 'package:flutter/material.dart';
import 'package:flutter_new_app/Screen/product_detail.dart';
import 'package:flutter_new_app/components/bottom_navigation.dart';
import 'package:flutter_new_app/components/header.dart';

class CategorieCurrent extends StatefulWidget {
  const CategorieCurrent(String title, {Key? key}) : super(key: key);

  @override
  State<CategorieCurrent> createState() => _CategorieCurrentState();
}

class _CategorieCurrentState extends State<CategorieCurrent> {

  List<Map> products = [
    {
      "products": "Iphone 14 Pro",
      "image": "assets/images/iphone14pro.jpg",
      "Price": "999"
    },
    {
      "products": "Mac Book Pro",
      "image": "assets/images/macbookpro.jpg",
      "Price": "999"
    },
    {
      "products": "Iphone 13 Pro Max",
      "image": "assets/images/iphone13promax.jpg",
      "Price": "999"
    },
    {
      "products": "Iphone 11",
      "image": "assets/images/iphone11.png",
      "Price": "999"
    },
    {
      "products": "Iphone 13",
      "image": "assets/images/iphone13.webp",
      "Price": "999"
    },
    {
      "products": "Mac Book Pro",
      "image": "assets/images/macbookpro.jpg",
      "Price": "999"
    },
    {
      "products": "Mac Book Pro",
      "image": "assets/images/macbookpro.jpg",
      "Price": "999"
    },
    {
      "products": "Iphone 11",
      "image": "assets/images/iphone11.png",
      "Price": "999"
    },
  ];

  late String categoryTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 70),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //header
                children: [
                  header(categoryTitle, context),
                  const SizedBox(height: 10),
                  Expanded(
                    child: GridView.count(
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 16,
                      crossAxisCount: 2,
                      children: products.map((Map product) {
                        return page(product["products"],
                            product["image"], product["Price"], context);
                      }).toList(),
                    ),
                  )
                ],
              ),
            ),
            bottomNavigationBar('search'),
          ],
        ),
      ),
    );
  }
}


Widget page(String title, String path, String price, context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return ProductDetailPage(title);
          },
        ),
      );
    },
    child: Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 24,
            offset: const Offset(0, 16),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 16),
          Image.asset(path),
          const SizedBox(height: 18),
          Column(
            children: [
              Text(
                title,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                'USD $price',
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
