import 'package:ecom_app/models/shoe.dart';

class Cart{
  //list of shoes for sales
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Air Force 1', 
      price: '120', 
      imagePath: 'lib/images/af2.png', 
      description: 'The forward-thinking design of his latest signature shoes'
    ), 
    Shoe(
      name: 'Air Force 1 Premiums', 
      price: '130', 
      imagePath: 'lib/images/af2.png', 
      description: 'The forward-thinking design of his latest signature shoes'
    ), 
    Shoe(
      name: 'Air Force 1', 
      price: '150', 
      imagePath: 'lib/images/af3.png', 
      description: 'The forward-thinking design of his latest signature shoes'
    ), 
    Shoe(
      name: 'Air Force 1 Premiums', 
      price: '150', 
      imagePath: 'lib/images/af4.png', 
      description: 'The forward-thinking design of his latest signature shoes'
    ), 
    
  ];
  //list of items in user cart
  List<Shoe> userCart = [];


  //get list of shoes for sale 
  List<Shoe> getShoeList(){
    return shoeShop;
  }

  //get cart
  List<Shoe>getUserCart(){
    return userCart;
  }

  //add items to car
  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
  }

  //remove item fron cart
  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
  }
}