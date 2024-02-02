import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //Logo
            children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Image.asset('lib/images/pngegg.png', height: 240,),
            ),
            
            const SizedBox(height: 48),
          
            //title
            const Text(
              'Just Do It',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          
            const SizedBox(height: 24),
            //sub title
            const Text(
              'Brand new sneakers and custom kicks made with premium quality.',
              style: TextStyle(color: Colors.grey, fontSize: 16),
              textAlign: TextAlign.center,
            ),
            
            const SizedBox(height: 48),

            //start now button
            GestureDetector(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage())),
              child: Container(
                  
                decoration: BoxDecoration(color: Colors.grey[900], borderRadius: BorderRadius.circular(12)),
                padding: const EdgeInsets.all(25),
                child: const Text('Shop Now', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
              ),
            )
          
          ]),
        ),
      ),
    );
  }
}
