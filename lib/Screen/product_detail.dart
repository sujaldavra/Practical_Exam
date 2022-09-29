import 'package:flutter/material.dart';
import 'package:flutter_new_app/components/bottom_navigation.dart';
import '../components/header.dart';

class ProductDetailPage extends StatefulWidget {
  String productTitle;

  ProductDetailPage(this.productTitle, {super.key});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  Color? selectedColor;
  List<Color> colors = [
    const Color(0XFF52514F),
    const Color(0XFF0001FC),
    const Color(0XFF6F7972),
    const Color(0XFFF5D8C0),
  ];

  List<int> capacities = [64, 128, 256];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 60),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //header
                children: [
                  header(widget.productTitle, context),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Image.asset('assets/images/iphone14pro.jpg'),
                        ),
                        const SizedBox(height: 25),
                        const SizedBox(
                          height: 20,
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        const Text('Capacity',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600)),
                        const SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            capacity(64),
                            const SizedBox(width: 15),
                            capacity(128),
                            const SizedBox(width: 15),
                            capacity(256),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            bottomNavigationBar('search'),
            Padding(
              padding: const EdgeInsets.only(top: 510, left: 70, right: 60),
              child: Container(
                width: 250,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Text(
                    'Add to cart',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget capacity(int capacity) {
  return Column(
    children: [
      Text('$capacity GB',
          style: const TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w400)),
    ],
  );
}
