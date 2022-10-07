import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hymns/feature/hymns_and_songs/domain/entities/hymn.dart';
import 'package:hymns/presentation/ds/appbar/appbar.dart';
import 'package:hymns/presentation/ds/colors.dart';
import 'package:hymns/presentation/ds/divider.dart';
import 'package:hymns/presentation/ds/hymn_bar/hymn_bar.dart';
import 'package:hymns/presentation/ds/hymn_details/hymn_details.dart';
import 'package:hymns/presentation/ds/navigation_bar/navigation_bar.dart';
import 'package:hymns/presentation/ds/return_bar/return_bar.dart';
import 'package:hymns/presentation/home/home_bloc.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  static const routeName = '/home';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final bloc = GetIt.I<HomeBloc>();

  @override
  void initState() {
    bloc.loanHymn();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Hymn>(
        stream: bloc.hymnStream,
        builder: (context, snapshot) {
          var hymn = snapshot.data ?? Hymn('', 0, ['']);
          return Scaffold(
            appBar: const AppBarWidget(),
            bottomSheet: const NavBar(
              goBack: hello,
              goFurther: hello,
            ),
            body: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: HColors.greyBackground,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.all(0.0),
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        const ReturnBar(),
                        const HDivider(),
                        HymnBar(
                            index: hymn.number,
                            title: hymn.title,
                            onPressed: hello),
                        const HDivider(),
                        SizedBox(
                          height: 400,
                          child: ListView.builder(
                            itemCount: hymn.verses.length,
                            itemBuilder: (BuildContext context, int index) {
                              final verse = hymn.verses[index];
                              return HymnDetails(
                                text: verse,
                              );
                            },
                          ),
                        ),
                        const HDivider(),
                      ],
                    );
                  },
                ),
              ),
            ),
          );
        });
  }
}

hello() {}
