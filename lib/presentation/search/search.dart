import 'package:flutter/material.dart';
import 'package:hymns/presentation/ds/appbar/appbar.dart';
import 'package:hymns/presentation/ds/colors.dart';


class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);
  static const routeName = '/search';

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: const AppBarWidget(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.black,
        child: Column(
            children: const [
              Divider(
                color: HColors.green,
                thickness: 5,
              ),
            ],

        ),
      ),
    );
  }
}
