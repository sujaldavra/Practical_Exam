import 'package:flutter/material.dart';
import 'package:flutter_new_app/components/bottom_navigation.dart';
import 'categories_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 60.0),
                child: ListView(
                  children: [
                    Name(title: 'Home'),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildNavigation(
                              categoryName: "Categories",
                              icon: Icons.category_outlined,
                              widget: CategoriesPage(),
                              context: context),
                          buildNavigation(
                              categoryName: "Favorites",
                              icon: Icons.star_outline_sharp,
                              widget: const HomeScreen(),
                              context: context),
                          const SizedBox(
                            width: 160,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        salesItem(
                            name: 'Smartphones',
                            path: 'assets/images/iphone11.png',
                            discount: 50,
                            screenWidth: width),
                        salesItem(
                            name: 'Smartphones',
                            path: 'assets/images/iphone13.webp',
                            discount: 25,
                            screenWidth: width),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        salesItem(
                            name: 'Earphones',
                            path: 'assets/images/macbookpro.jpg',
                            discount: 75,
                            screenWidth: width),
                        salesItem(
                            name: 'Earphones ',
                            path: 'assets/images/iphone13promax.jpg',
                            discount: 25,
                            screenWidth: width),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        salesItem(
                            name: 'Laptops',
                            path: 'assets/images/iphone14pro.jpg',
                            discount: 75,
                            screenWidth: width),
                        salesItem(
                            name: 'Laptops',
                            path: 'assets/images/macbookpro.jpg',
                            discount: 25,
                            screenWidth: width),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            bottomNavigationBar('home')
          ],
        ),
      ),
    );
  }
}

Widget Name({required String title}) {
  return Padding(
    padding: const EdgeInsets.only(top: 28.0),
    child: Text(
      title,
      style: const TextStyle(
          fontSize: 32, color: Colors.black, fontWeight: FontWeight.bold),
    ),
  );
}

Widget salesItem(
    {required String name,
    required String path,
    required int discount,
    required double screenWidth}) {
  return Container(
    width: (screenWidth - 60) * 0.5,
    padding: const EdgeInsets.only(left: 12, right: 12, top: 12, bottom: 21),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: const Color(0xffe0ecf8),
          ),
          child: Text(
            textAlign: TextAlign.center,
            '-$discount%',
            style: const TextStyle(
                color: Colors.black,
                fontSize: 15,
                backgroundColor: Color(0xffe0ecf8)),
          ),
        ),
        const SizedBox(height: 10),
        Image.asset(path),
        const SizedBox(height: 10),
        Center(
          child: Text(
            textAlign: TextAlign.center,
            name,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ),
      ],
    ),
  );
}
