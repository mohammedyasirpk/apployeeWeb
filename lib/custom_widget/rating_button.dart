// ignore_for_file: prefer_const_constructors

// ignore: unused_import
import 'package:flutter/material.dart';

class RatingButton extends StatelessWidget {
  const RatingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: Dimensions.widthCalc(context, 60),
      // height: Dimensions.widthCalc(context, 30),
      width: 60,
      height: 25,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.grey[300]),
      child: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Icon(
              Icons.arrow_upward,
              size: 14,
              color: Colors.white,
            ),
            Text(
              '0.00%',
              style: TextStyle(color: Colors.white, fontSize: 13),
            ),
          ],
        ),
      ),
    );
  }
}
