import 'package:flutter/material.dart';

Widget bottomNavigationBar(String page) {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Container(
      decoration: BoxDecoration(
        color: Color(0xffeff5fb),
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, -5),
              color: Colors.black.withOpacity(0.25),
              blurRadius: 10),
        ],
      ),
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildNavIcon(
            icondata: Icons.home_filled,
            active: page == 'home',
          ),
          buildNavIcon(
            icondata: Icons.search,
            active: page == 'search',
          ),
          buildNavIcon(
            icondata: Icons.shopping_cart,
            active: page == 'cart',
          ),
          buildNavIcon(
            icondata: Icons.person,
            active: page == 'profile',
          ),
        ],
      ),
    ),
  );
}

Widget buildNavIcon({required IconData icondata, required bool active}) {
  return Icon(
    icondata,
    size: 30,
    color: Color(active ? 0xffeff5fb : 0XFF0A1034),
  );
}

Widget buildNavigation(
    {required String categoryName,
    required IconData icon,
    required Widget widget,
    required BuildContext context}) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return widget;
          },
        ),
      );
    },
    child: Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 22),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black,
          ),
          child: Icon(icon),
        ),
        const SizedBox(height: 8),
        Text(
          categoryName,
          style: const TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ],
    ),
  );
}
