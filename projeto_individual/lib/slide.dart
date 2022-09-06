// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'color_palette.dart';

class Slide extends StatelessWidget {
  final String imagePath;
  final String title;

  const Slide({
    Key? key,
    required this.imagePath,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: ColorPalette().primColor, width: 2),
        ),
        width: MediaQuery.of(context).size.width / 2.5,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 3),
              ),
              height: 150,
              clipBehavior: Clip.antiAlias,
              child: Stack(
                  alignment: Alignment.center,
                  fit: StackFit.expand,
                  children: [
                    Image.asset(
                      'assets/images/tech_bckg.png',
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      imagePath,
                    ),
                  ]),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white, width: 3),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Text(
                    title,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
