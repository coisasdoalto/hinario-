import 'package:flutter/material.dart';
import 'package:hymns/ds/colors.dart';
import 'package:hymns/home/home.dart';

class Bookmark extends StatelessWidget {
  const Bookmark({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: IconButton(
          icon: const Icon(
            Icons.bookmark,
            size: 36,
            color: HColors.white,
          ),
          onPressed: () {
            Navigator.pushReplacementNamed(context, Home.routeName);
          },
        ));
  }
}
