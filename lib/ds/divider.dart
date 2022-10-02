import 'package:flutter/material.dart';
import 'package:hymns/ds/colors.dart';

class HDivider extends StatelessWidget {
  const HDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _hDivider();
  }
}

Divider _hDivider() {
  return const Divider(
    color: HColors.greyDivider,
    thickness: 3,
  );
}
