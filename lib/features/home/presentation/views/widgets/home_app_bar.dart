import 'package:flutter/material.dart';
import 'package:movies/constants.dart';
import 'package:movies/core/utils/styles.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Movies', style: Styles.textStyle30(color: SecondaryColor)),
      ],
    );
  }
}
