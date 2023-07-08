import 'package:flutter/material.dart';


class ReusableContainer extends StatelessWidget {
  ReusableContainer( {required this.CardChild, required this.colour});
  final Color colour;
  final Widget CardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CardChild,
      height: 170,
      width: 200,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(8.0)
      ),
    );
  }
}

