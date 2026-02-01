import 'package:flutter/material.dart';
import 'package:movies/features/home/presentation/views/widgets/home_app_bar.dart';
import 'package:movies/features/home/presentation/views/widgets/search_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [CustomHomeAppBar(), SizedBox(height: 20), search_bar()],
          ),
        ),
      ),
    );
  }
}
