import 'package:flutter/material.dart';
import 'package:hymns/presentation/ds/colors.dart';

class HymnDetails extends StatelessWidget {
  final String text;
  const HymnDetails({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _hymn(text, context);
  }
}

Widget _hymn(String text, BuildContext context) {
  return Container(
    color: HColors.greyBackground,
    height: MediaQuery.of(context).size.height * .7,
    width: double.infinity,
    child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 24),
        child: Text(
          text,
          textAlign: TextAlign.start,
          style: const TextStyle(
            color: HColors.white,
            fontSize: 24,
            fontWeight: FontWeight.w200,
          ),
        ),
      ),
    ),
  );
}
