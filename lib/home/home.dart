import 'package:flutter/material.dart';
import 'package:hymns/ds/appbar/appbar.dart';
import 'package:hymns/ds/colors.dart';
import 'package:hymns/ds/divider.dart';
import 'package:hymns/ds/hymn_bar/hymn_bar.dart';
import 'package:hymns/ds/hymn_details/hymn_details.dart';
import 'package:hymns/ds/navigation_bar/navigation_bar.dart';
import 'package:hymns/ds/order_bar/order_bar.dart';
import 'package:hymns/ds/return_bar/return_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  static const routeName = '/home';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String hhh = '''1. GraÃ§as sejam dadas a Deus
Pelo dom do bom Salvador;
GraÃ§as ao Senhor que morreu
E de Deus mostrou-nos favor.
Temos em Jesus salvaÃ§Ã£o,
Por Seu sangue jÃ¡ gozamos paz;
Essa morte que Ele sofreu
Pureza divina nos traz.

Sempre com Jesus! Puros como a luz
Pelo sangue que Ele verteu
Por nÃ³s, ao morrer sobre a cruz. 

2. Grande foi na cruz essa dor
Que por culpas nossas sofreu;
Grande o Seu notÃ¡vel amor
Pelos homens, por quem morreu.
Infinitas glÃ³rias ganhou
Quando deu a Sua vida ali;
Incessantes graÃ§as terÃ¡
Dos Seus resgatados aqui.

3. Muitas bÃªnÃ§Ã£os Ele nos deu
Quando o nosso mal expiou;
Gozo, paz, vigor, salvaÃ§Ã£o,
Para nÃ³s, culpados, ganhou.
Mas a bÃªnÃ§Ã£o mais divinal
Foi que, mesmo ao pobre pecador,
Quando padeceu sobre a cruz,
Jesus revelou Seu amor. 
''';

  @override
  Widget build(BuildContext context) {
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
                      index: index,
                      title: 'A DIVINAL MENSAGEM',
                      onPressed: hello),
                  const HDivider(),
                  HymnDetails(text: hhh),
                  const HDivider(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

void hello() {}
