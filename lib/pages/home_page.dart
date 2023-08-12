import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rove/utils/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Column(
          children: [ 
           const Text(
            "hell"
            ),
           const SizedBox(
            height: 10,
          ),
          Container(

                height: 192,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 2, 1, 1))),
           const SizedBox(
            height: 10,
          ),
          Container(
            width: 390,
                height: 192,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 255, 255, 255),
                    border: Border.all(
                      color: keyColor,
                    )
              ),
              child: const Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.circle,),
                    Text("UCER",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: keyColor)),
                    Text("R2",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: primaryColor)
                      )
                  ],
                ),

                Row(
                children: [
                    VerticalDivider(
                      color: Colors.black,
                      thickness: 2,
                    ),
                    Text("ga"),
                ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.circle),
                    Text("Shantipuram",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: keyColor )),
                    Text("ETA - 07:50 a.m.",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: primaryColor)),
                  ],
                ),

                Divider(
                  height: 40,
                  color: keyColor,
                  thickness: 1,
                  indent: 25.0,
                  endIndent: 25.0,
                  
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Bus will be there in",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: primaryColor)),
                    Text("20 mins",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: keyColor))
                  ],
                ),
                Divider(
                  height: 40,
                  color: keyColor,
                  thickness: 1,
                  indent: 25.0,
                  endIndent: 25.0,
                ),

              ]),
            ),
          ],
        ),
      ),
    );
  }
}
