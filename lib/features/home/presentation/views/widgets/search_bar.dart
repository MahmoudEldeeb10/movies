import 'package:flutter/material.dart';

class search_bar extends StatelessWidget {
  const search_bar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search Movies..',
        hintStyle: TextStyle(color: Colors.white),
        prefixIcon: Icon(Icons.search, color: Colors.white),
        border: OutlineInputBorder(
          borderSide: BorderSide(width: 2.0, color: Colors.red),
          borderRadius: BorderRadius.circular(16.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 3.5, color: Colors.red),
          borderRadius: BorderRadius.circular(16.0),
        ),

        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2.0, color: Colors.red),
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
    );
  }
}
