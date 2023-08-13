import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rove/utils/colors.dart';
// // import 'package:timeline_tile/timeline_tile.dart';

// class HomePages extends StatefulWidget {
//   const HomePages({super.key});

//   @override
//   State<HomePages> createState() => _HomePagesState();
// }

// class _HomePagesState extends State<HomePages> {
//   @override
//   Widget build(BuildContext context) {
//     //define all the variables here
//     String travellersName = "Priyanshu";
//     travellersName = "$travellersName 👋🏻";

//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           width: 430,
//           height: 170,
//           decoration: const BoxDecoration(
//             color: keyColor,
//             borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(14),
//                 bottomRight: Radius.circular(14)),
//           ),
//           child: Row(
//             children: [
//               Container(
//                 width: 90,
//                 height: 90,
//                 clipBehavior: Clip.antiAlias,
//                 decoration: BoxDecoration(
//                   // shape: BoxShape.circle,
//                   borderRadius: BorderRadius.circular(50),
//                 ),
//                 child: Image.asset(
//                   'assets/images/Priyanshu.JPG',
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               Column(
//                 children: [
//                   const Text("Hey there,",
//                   style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.w600,
//                     color: Colors.white,
//                     ),
//                   ),
//                   Text(travellersName,
//                   style: const TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.w600,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ],
//               ),
//               const Icon(
//                 Icons.notifications,
//                 color:secondaryColor,
//               ),
//               const Column(
//                 children: [
//                   Icon(Icons.settings,
//                   color: secondaryColor,
//                   ),
//                   Icon(Icons.menu_book,
//                   color: secondaryColor,)
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: 150,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: keyColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(14),
              bottomRight: Radius.circular(14),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      
                      children: [
                        Row(
                          children: [
                            //image+bg container
                            const CircleAvatar(
                              backgroundColor: secondaryColor,
                              radius: 50,
                              child: CircleAvatar(
                                backgroundImage: AssetImage(
                                  'assets/images/Priyanshu.JPG',
                                ),
                                radius: 48,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Hey there,',
                                      style: GoogleFonts.poppins(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: secondaryColor,
                                      ),
                                    ),
                                    Text(
                                      'Priyanshu 👋🏻',
                                      style: GoogleFonts.poppins(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: secondaryColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      const SizedBox(width: 40,),
                        const Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  
                                  children: [
                                    Icon(
                                      Icons.notifications,
                                      color: secondaryColor,
                                      size: 35,
                                    ),
                                    SizedBox(width: 15,),
                                    Icon(
                                      Icons.settings,
                                      color: secondaryColor,
                                      size: 35,
                                    )
                                  ],
                                ),
                                
                                Icon(
                                  Icons.credit_card,
                                  color: secondaryColor,
                                  size: 35,
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
