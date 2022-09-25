import 'package:flutter/material.dart';

class Product {
  final String image;
  final int  id;

  Product({
    required this.id,
    required this.image,
   
  });
}

List<Product> products = [
  Product(
      id: 1,
      
      image: "assets/posts/post1.png",
      ),
  Product(
      id: 2,
     
      image: "assets/posts/post2.png",
      ),
  Product(
      id: 3,
     
      image: "assets/posts/post3.png",
    ),
  Product(
      id: 4,
    
      image: "assets/posts/post4.png",
      ),
  Product(
      id: 5,
      
      image: "assets/posts/post5.png",
      ),
  Product(
    id: 6,
   
    image: "assets/posts/post6.png",
  )
];