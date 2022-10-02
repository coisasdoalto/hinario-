import 'package:flutter/material.dart';
import 'package:hymns/ds/colors.dart';

class HymnBar extends StatelessWidget {
  final int index;
  final String title;
  final Function onPressed;
  const HymnBar({
    Key? key,
    required this.index,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _hymnBar(index, title, onPressed);
  }
}

Widget _hymnBar(int index, String title, Function onPressed) {
  return GestureDetector(
    onTap: onPressed(),
    child: Container(
      color: HColors.greyBackground,
      height: 100,
      width: double.infinity,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              '$index',
              style: const TextStyle(
                color: HColors.white,
                fontSize: 44,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              title,
              style: const TextStyle(
                color: HColors.white,
                fontSize: 24,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
