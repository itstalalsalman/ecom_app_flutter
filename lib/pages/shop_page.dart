import 'package:ecom_app/models/shoe.dart';
import 'package:flutter/material.dart';
import './shoe_tile.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //search bar
          Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(color: Colors.grey[100], borderRadius: BorderRadius.circular(8)),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Search', style: TextStyle(color: Colors.grey),),
                Icon(Icons.search, color: Colors.grey),
              ],
            ),
            
          ),
        //message
          Padding(
            padding: const EdgeInsets.symmetric(vertical:25.0),
            child: Text('everyone flies.. some fly longer than others \n "MB.Jordan"', style: TextStyle(color: Colors.grey[600]), textAlign: TextAlign.center,),
          ),
        //hotpics
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
            Text('Hot Picks 🔥', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
            Text('See all',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),),
          ],),
        ),

        const SizedBox(height: 10,),

        Expanded(
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              
              //create a shoe
              Shoe shoe = Shoe(
                  name: 'Air Force 1',
                  price: '100', 
                  description: 'Nike Air Force 1 is one of the most comfortable shoes', 
                  imagePath: 'lib/images/a1.png',
                );
                return ShoeTile(
                  shoe: shoe,
                );
              },
            )

          ),

      ],
    );
  }
}