import 'dart:ffi';

import 'package:flutter/material.dart';
import '../../../../constant/constant.dart';
import '../../../models/mockup_data.dart';

class foodListCard extends StatelessWidget {
  final String foodList;
  final double foodPrice;
  const foodListCard(
      {super.key, required this.foodList, required this.foodPrice});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 90,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [kDefaultShadow],
          color: kCompColor),
      child: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          Text(foodList,
              style: TextStyle(
                  color: kPrimaryColor,
                  fontFamily: 'SFTHONBURI',
                  fontSize: 20,
                  fontWeight: FontWeight.w600)),
          Spacer(),
          Text(
            '${foodPrice.toStringAsFixed(2)}฿',
            style: TextStyle(
                color: kPrimaryColor,
                fontSize: 20,
                fontFamily: 'SFTHONBURI',
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
