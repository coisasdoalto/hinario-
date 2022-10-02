import 'package:flutter/material.dart';
import 'package:hymns/ds/colors.dart';

class InformationBar extends StatelessWidget {
  final String text;
  const InformationBar({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _bar(text);
  }
}

Widget _bar(String text) {
  return Container(
    color: HColors.greyBackground,
    height: 40,
    width: double.infinity,
    child: Center(
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: HColors.white,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  );
}
