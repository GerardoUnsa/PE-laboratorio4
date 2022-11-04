import 'package:flutter/material.dart';
import 'package:lab4/constants.dart';

import 'header.dart';
import 'title_body.dart';
import 'best_flowerpots.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Permitir un ancho y alto total posible
    Size size = MediaQuery.of(context).size;
    // Habilitar scrolling
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Header(size: size),
          TitleBody(title: "Macetas", press: () {}),
          BestFlowerpots(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
