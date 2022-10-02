import 'package:flutter/material.dart';
import 'package:hymns/ds/colors.dart';
import 'package:hymns/search/search.dart';

class SearchIcon extends StatelessWidget {
  const SearchIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: IconButton(
      icon: const Icon(
        Icons.search,
        size: 36,
        color: HColors.white,
      ),
      onPressed: () {
        Navigator.pushReplacementNamed(context, Search.routeName);
      },
    ));
  }
}
