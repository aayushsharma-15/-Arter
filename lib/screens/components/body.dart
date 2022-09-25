

import 'package:arter/constants.dart';
import 'package:arter/products.dart';
import 'package:flutter/material.dart';
import 'package:arter/products.dart';
class body extends StatelessWidget{

  @override 
  Widget build(BuildContext context){
    
    return Column(
      children: [
         Stack(
        children:<Widget> [
      Image.asset('assets/images/try1.png',width: 500,height: 200,fit:BoxFit.fitWidth ,),
      Text("\n\n\nA community\n\nbuild for\n\nartists.",
      textAlign: TextAlign.left,style: TextStyle(
        fontSize:15,
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.italic,
        color:Color.fromARGB(255, 33, 31, 31),
      ),
      ),
      

    ],
    ),
    Divider(),
    Expanded(
      
       child: Padding(

            padding:  EdgeInsets.symmetric(horizontal: kDefaultpaddin),
            child: GridView.builder(
              itemCount: 6,
      gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount:2,
        mainAxisSpacing: kDefaultpaddin,
        crossAxisSpacing: kDefaultpaddin ,
        childAspectRatio: 0.75 ) ,
         itemBuilder:  (context, index) => itemcard(
          product :products[index]) )
       ),
       ),
         
  
    ]
    
    );

  }
}

class itemcard extends StatelessWidget {
  final Product product;
  const itemcard({
    Key? key, required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(kDefaultpaddin),
          height: 180,
          width: 160,
          decoration: BoxDecoration(border:Border.all(width: 1.0) ,
            
            borderRadius: BorderRadius.circular(16),
          

          ),
          child: Image.asset(product.image),
        ),
        
      ],
    );
  }
}
