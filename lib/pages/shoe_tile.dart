import 'package:ecom_app/models/shoe.dart';
import 'package:flutter/material.dart';


class ShoeTile extends StatelessWidget {
  Shoe shoe;
  ShoeTile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        children: [
          //show pic
          ClipRRect(borderRadius: BorderRadius.circular(12),child: Image.asset(shoe.imagePath)),
          //description
          Text(
            shoe.description,
            style: TextStyle(color: Colors.grey[600]),
          ),

          //price + details
          Row(children: [
            Column(children: [
              //show name
              Text(shoe.name),
              //price
              Text(shoe.price),
            ],),
          ],),

          //add to card

        ],
      ),
    );
  }
}