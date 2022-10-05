import 'package:flutter/material.dart';
import 'package:hymns/presentation/ds/colors.dart';

class OrderBar extends StatelessWidget {
  final Function alphabetical;
  final Function numerical;
  const OrderBar({
    required this.alphabetical,
    required this.numerical,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _bar(context, alphabetical, numerical);
  }
}

Widget _bar(BuildContext context, Function alphabetical, Function numerical) {
  return Container(
    color: HColors.greyBackground,
    height: 50,
    width: double.infinity,
    child: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: alphabetical(),
            child: const Text(
              'A-Z',
              style: TextStyle(
                color: HColors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          const VerticalDivider(
            color: HColors.greyDivider,
            thickness: 3,
          ),
          GestureDetector(
            onTap: numerical(),
            child: const Text(
              '1-750',
              style: TextStyle(
                color: HColors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
