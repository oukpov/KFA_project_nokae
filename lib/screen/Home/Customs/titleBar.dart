// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/KFA-Logo.png',
              height: 85,
              width: 85,
            ),
            Text(
              ' ONE CLICK  ',
              style: TextStyle(
                //color: Color.fromRGBO(169, 203, 56, 1),
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '1\$',
              style: TextStyle(
                //color: Color.fromRGBO(169, 203, 56, 1),
                color: Colors.yellow,
                fontSize: 24,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    blurRadius: 5.0,
                    color: Colors.yellow,
                    offset: Offset(1.5, 1.5),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
