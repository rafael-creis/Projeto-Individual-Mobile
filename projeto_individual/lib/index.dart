import 'dart:async';

import 'package:flutter/material.dart';
import 'package:projeto_individual/color_palette.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projeto_individual/slide.dart';

class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  List<Slide> listaSlides = const [
    Slide(
        imagePath: 'assets/images/portalweapon.png',
        title: 'APERTURE SCIENCE HANDHELD PORTAL DEVICE'),
    Slide(
        imagePath: 'assets/images/companion_cube.png',
        title: 'APERTURE SCIENCE WEIGHTED COMPANION CUBE'),
    Slide(
        imagePath: 'assets/images/sentry_turret.png',
        title: 'APERTURE SCIENCE AUTOMATIC SENTRY TURRET'),
    Slide(
        imagePath: 'assets/images/longfall_boots.png',
        title: 'APERTURE SCIENCE LONG FALL BOOT'),
    Slide(
        imagePath: 'assets/images/glados.png',
        title: 'APERTURE SCIENCE █████████ ██████ ██████')
  ];

  BoxShadow portraitBlink =
      const BoxShadow(color: Colors.white, spreadRadius: 2, blurRadius: 7);
  @override
  void initState() {
    int counter = 0;
    int duration = 750;
    Timer.periodic(Duration(milliseconds: duration), (timer) {
      counter++;
      setState(() {
        portraitBlink = counter % 2 == 0
            ? const BoxShadow(
                color: Colors.white, spreadRadius: 2, blurRadius: 7)
            : const BoxShadow(
                color: Colors.white, spreadRadius: 0, blurRadius: 0);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette().mainGrey,
      appBar: AppBar(
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
          child: SvgPicture.asset(
            'assets/images/logo.svg',
          ),
        ),
        title: Text(
          'Aperture Laboratories',
          overflow: TextOverflow.visible,
          style: TextStyle(
              color: ColorPalette().secColor,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: ColorPalette().mainGrey,
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return ListView.builder(
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: ColorPalette().darkerGrey, width: 2))),
                      child: Image.asset('assets/images/introd2.jpg')),

                  // Bem Vindo
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        width: constraints.maxWidth,
                        decoration: BoxDecoration(
                            color: ColorPalette().darkGrey,
                            border: Border.all(
                                color: ColorPalette().primColor, width: 2),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(30)),
                            boxShadow: [SessionPalette().sessionShadow]),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(bottom: 10.0),
                                child: Text(
                                  'Seja Bem Vindo(a), à Aperture Science Laboratories',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border(
                                        top: BorderSide(
                                            color: ColorPalette().primColor))),
                                child: const Padding(
                                  padding: EdgeInsets.only(top: 10.0),
                                  child: Text(
                                    'A Aperture Laboratories é a líder em inovação científica, e queremos você para nos ajudar a atingir nosso objetivo!',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),

                  // Sobre Nós
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: ColorPalette().darkGrey,
                          border: Border.all(
                              color: ColorPalette().secColor, width: 2),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(25)),
                          boxShadow: [SessionPalette().sessionShadow]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          // Imagem Cave Sobre Nós
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                                20.0, 20.0, 10.0, 20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  width: constraints.maxWidth / 3,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1.5,
                                          color: ColorPalette().primColor),
                                      boxShadow: [
                                        portraitBlink,
                                        BoxShadow(
                                            color: ColorPalette().darkerGrey),
                                        BoxShadow(
                                            color: ColorPalette().mainGrey,
                                            spreadRadius: -3.5),
                                      ]),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Image.asset('assets/images/ycj.jpg'),
                                        const Padding(
                                          padding: EdgeInsets.only(top: 8.0),
                                          child: Text(
                                            'Cave Johnson, Fundador da Aperture Science',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: ElevatedButton(
                                      style: ButtonStyle(
                                          elevation:
                                              MaterialStateProperty.all(5),
                                          shadowColor:
                                              MaterialStateProperty.all(
                                                  ColorPalette().darkerGrey),
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  ColorPalette().mainGrey),
                                          shape: MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(12),
                                                    bottomRight:
                                                        Radius.circular(12),
                                                  ),
                                                  side: BorderSide(
                                                    color:
                                                        ColorPalette().secColor,
                                                    width: 2,
                                                  )))),
                                      onPressed: () {},
                                      child: const Text(
                                        'Saiba Mais',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      )),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                                10.0, 20.0, 20.0, 20.0),
                            child: Container(
                              width: constraints.maxWidth / 2.3,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: ColorPalette().secColor,
                                      width: 1.5),
                                  boxShadow: [
                                    BoxShadow(
                                      color: ColorPalette().darkerGrey,
                                      spreadRadius: 2.5,
                                    ),
                                    BoxShadow(
                                      color: ColorPalette().mainGrey,
                                      spreadRadius: -4,
                                    )
                                  ]),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(bottom: 8),
                                      child: const Text(
                                        'Sobre Nós',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    const Text(
                                        'Criada em 1940 por Cave Johnson, a Aperture Science™ é a definição de qualidade e inovação no campo da ciência moderna, criando diversas invenções com nomes longos e complicados com a intenção de tudo parecer muito mais complexo e científico do que realmente é!',
                                        style: TextStyle(color: Colors.white)),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                            color: ColorPalette().darkGrey,
                            border: Border.all(
                                color: ColorPalette().primColor, width: 2),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(25)),
                            boxShadow: [SessionPalette().sessionShadow]),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8, top: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          .4,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: ColorPalette().primColor,
                                              width: 1.5),
                                          boxShadow: [
                                            BoxShadow(
                                              color: ColorPalette().darkerGrey,
                                              spreadRadius: 2.5,
                                            ),
                                            BoxShadow(
                                              color: ColorPalette().mainGrey,
                                              spreadRadius: -4,
                                            )
                                          ]),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  bottom: 8),
                                              child: const Text(
                                                'Nossas Invenções',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            const Text(
                                                'Com tecnologia de ponta, e a quantidade ideal de testes para saber a qualidade de cada novo equipamento, a Aperture Science™ garante total segurança* e precisão com todas as nossas invenções.',
                                                style: TextStyle(
                                                    color: Colors.white)),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: ElevatedButton(
                                          style: ButtonStyle(
                                              elevation:
                                                  MaterialStateProperty.all(5),
                                              shadowColor:
                                                  MaterialStateProperty.all(
                                                      ColorPalette()
                                                          .darkerGrey),
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      ColorPalette().mainGrey),
                                              shape: MaterialStateProperty.all(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                        topRight:
                                                            Radius.circular(12),
                                                        bottomLeft:
                                                            Radius.circular(12),
                                                        bottomRight:
                                                            Radius.circular(12),
                                                      ),
                                                      side: BorderSide(
                                                        color: ColorPalette()
                                                            .primColor,
                                                        width: 2,
                                                      )))),
                                          onPressed: () {},
                                          child: const Text(
                                            'Ver Invenções',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          )),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4.0, vertical: 12.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border: Border(
                                      right: BorderSide(
                                          color: ColorPalette().primColor,
                                          width: 2),
                                    )),
                                    child: SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          .6,
                                      height: 290,
                                      child: ListView.builder(
                                        itemCount: listaSlides.length,
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return Slide(
                                              imagePath:
                                                  listaSlides[index].imagePath,
                                              title: listaSlides[index].title);
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )),
                  )
                ],
              );
            },
          );
        },
      ),
    );
  }
}
