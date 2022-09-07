import'package:flutter/material.dart';

//class MyDrawerList extends StatelessWidget{
 
//     var currentPage = DrawerSections.Home;
    
//     @override 
//     Widget build(BuildContext context) {
//     //   Widget menuItem(int id, String title, IconData icon, bool selected)
//     // {
//     // return Material(
      
//     //   color: selected ? Colors.grey[300] : Colors.transparent,
//     //   child: InkWell( 
//     //     onTap: () {
//     //       Navigator.pop(context);
//     //       setState(){
//     //         if(id==1){
//     //         currentPage=DrawerSections.Home;
//     //         }
//     //         else if (id==2){
//     //           currentPage=DrawerSections.Profile;
//     //         }
//     //         else if (id==3){
//     //           currentPage=DrawerSections.Shopping;
//     //         }
//     //         else if (id==4){
//     //           currentPage=DrawerSections.Aboutus;
//     //         }
//     //         else if (id==5){
//     //           currentPage=DrawerSections.Logout;
//     //         }
//     //       }
//     //     },
//         child: Padding(
//           padding: EdgeInsets.all(15.0),
//           child: Row(
//             children: [
//               Expanded(
//                 child: Icon(
//                   icon,
//                   size: 20,
//                   color: Colors.black,
//                 ),
//               ),
//               Expanded(
//                 flex: 3,
//                 child: Text(
//                   title,
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 16,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );}
  
//     // var container;
//     // if (currentPage == DrawerSections.Home) {
//     //   container = Home();
//     // } else if (currentPage == DrawerSections.Profile) {
//     //   container = Profile();
//     // } else if (currentPage == DrawerSections.Shopping) {
//     //   container = shopping();
//     // } else if (currentPage == DrawerSections.Aboutus) {
//     //   container = Aboutus();
//     // }
     
//  return Container(
//       padding: EdgeInsets.only(
//         top: 15,
//       ),
//       child: Column(
//         // shows the list of menu drawer
//         children: [
//           menuItem(1, "Home", Icons.home,
//               currentPage == DrawerSections.Home ? true : false),
//           menuItem(2, "Profile", Icons.people_alt_outlined,
//               currentPage == DrawerSections.Profile ? true : false),
//           menuItem(3, "Shopping", Icons.shopping_cart,
//               currentPage == DrawerSections.Shopping ? true : false),
//           menuItem(4, "About us", Icons.info,
//               currentPage == DrawerSections.Aboutus ? true : false),
//           Divider(),
//           menuItem(5, "Logout", Icons.logout,
//               currentPage == DrawerSections.Logout ? true : false),
          
//         ],
//       ),
//     );
//   } }
//   enum DrawerSections {
//   Home,
//   Profile,
//   Shopping,
//   Aboutus,
//   Logout,
  
// }