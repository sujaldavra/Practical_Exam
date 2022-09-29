import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_new_app/Screen/categorie_current_page.dart';
import 'package:flutter_new_app/components/bottom_navigation.dart';
import 'package:flutter_new_app/components/header.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  final List<String> categories = [
    "Phone",
  ];

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
                children: [
                  header('Categories', context),
                  Expanded(
                    child: ListView(
                      children: categories
                          .map(
                            (String title) => Categorie(title, context),
                          )
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar('search')
          ],
        ),
      ),
    );
  }
}

Widget Categorie(String title, context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return CategorieCurrent(title);
          },
        ),
      );
    },
    child: Container(
      padding: const EdgeInsets.all(24.0),
      margin: const EdgeInsets.only(bottom: 16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 4,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Text(
        title,
        style: const TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
      ),
    ),
  );
}
