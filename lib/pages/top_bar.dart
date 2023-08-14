import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rove/utils/colors.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    // declaring variables
    String travellerName = "Priyanshu";
    String imagePath = "assets/images/Priyanshu.JPG";

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
                            CircleAvatar(
                              backgroundColor: secondaryColor,
                              radius: 50,
                              child: CircleAvatar(
                                backgroundImage: AssetImage(
                                  imagePath,
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
                                      "$travellerName 👋🏻",
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
                        const SizedBox(
                          width: 70,
                        ),
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
                                      size: 30,
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Icon(
                                      Icons.settings,
                                      color: secondaryColor,
                                      size: 30,
                                    )
                                  ],
                                ),
                                Icon(
                                  Icons.credit_card,
                                  color: secondaryColor,
                                  size: 30,
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
