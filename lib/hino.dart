

import 'package:flutter/material.dart';
class Hymn extends StatelessWidget {
  const Hymn({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return hymn(
      context, 0,
    );
  }
}

  Widget hymn(BuildContext context, int hymnNumber) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Hino $hymnNumber'),
      ),
      body: Container(
        color: Colors.red,
      ),
    );
  }

