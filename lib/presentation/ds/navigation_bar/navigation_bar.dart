import 'package:flutter/material.dart';
import 'package:hymns/presentation/ds/colors.dart';
import 'package:hymns/presentation/ds/divider.dart';

class NavBar extends StatelessWidget {
  final Function goBack;
  final Function goFurther;
  const NavBar({
    required this.goBack,
    required this.goFurther,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _bar(context, goBack, goFurther);
  }
}

Widget _bar(BuildContext context, Function goBack, Function goFurther) {
  return Container(
    color: HColors.greyBackground,
    height: 80,
    width: double.infinity,
    child: Column(
      children: [
        const HDivider(),
        const SizedBox(
          height: 16,
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: goBack(),
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 32,
                  color: Colors.grey[700],
                ),
              ),
              const VerticalDivider(
                color: HColors.greyDivider,
                thickness: 3,
              ),
              GestureDetector(
                onTap: goFurther(),
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 32,
                  color: Colors.grey[700],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
