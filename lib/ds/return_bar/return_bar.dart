import 'package:flutter/material.dart';
import 'package:hymns/ds/colors.dart';

class ReturnBar extends StatelessWidget {
  const ReturnBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _bar();
  }
}

Widget _bar() {
  return Container(
    color: HColors.greyBackground,
    height: 40,
    width: double.infinity,
    child: Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Row(
        children: [
          const SizedBox(
            width: 24,
          ),
          Icon(
            Icons.arrow_back_ios,
            size: 32,
            color: Colors.grey[700],
          ),
          Text(
            'Voltar',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    ),
  );
}
