import 'package:flutter/material.dart';
import 'package:hinario/hino.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  get lista => null;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hinario'),
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Hymn()),
                );
              },
              child: Row(
                children: [
                  Text(
                    'Hino ${lista[index]}',
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                  const Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
          );
        },
        itemCount: lista.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
