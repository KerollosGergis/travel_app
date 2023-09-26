import 'package:flutter/material.dart';

class CategoryMainScreen extends StatelessWidget {
  // const CategoryMainScreen({Key? key}) : super(key: key);

  final String child;

  CategoryMainScreen({required this.child});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.deepOrange,
        ),
        child: Center(child: Text(child,)),
      ),
    );
  }
}
