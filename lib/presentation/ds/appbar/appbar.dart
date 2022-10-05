import 'package:flutter/material.dart';
import 'package:hymns/presentation/ds/appbar/bookmark.dart';
import 'package:hymns/presentation/ds/appbar/logo.dart';
import 'package:hymns/presentation/ds/appbar/search_icon.dart';
import 'package:hymns/presentation/ds/colors.dart';

class AppBarWidget extends StatelessWidget with PreferredSizeWidget  {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _appBarWidget();
  }
  
  @override
  Size get preferredSize => const Size.fromRadius(50);
}

AppBar _appBarWidget() {
  return AppBar(
    toolbarHeight: 100,
    elevation: 0,
    backgroundColor: HColors.black,
    leading: const Bookmark(),
    title: const Logo(),
    actions: const [SearchIcon()],
    bottom: PreferredSize(
        preferredSize: const Size.fromHeight(4.0),
        child: Container(
          color: HColors.green,
          height: 5.0,
        )),
  );
}
