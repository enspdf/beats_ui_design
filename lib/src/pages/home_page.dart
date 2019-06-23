import 'package:beats_ui_design/src/widgets/buy_button.dart';
import 'package:beats_ui_design/src/widgets/cards_view.dart';
import 'package:beats_ui_design/src/widgets/custom_appbar.dart';
import 'package:beats_ui_design/src/widgets/fondo_circular.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          FondoCircular(),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CustomAppBar(),
                  _Header(),
                  CardsView(),
                ],
              ),
            ),
          ),
          BuyButton(),
        ],
      ),
    );
  }
}

class _Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 45),
          Text(
            'Beats',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          Text(
            'By Dre',
            style: TextStyle(
              fontWeight: FontWeight.w100,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
