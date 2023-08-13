import 'package:flutter/material.dart';
import 'package:rove/utils/colors.dart';
// import 'package:timeline_tile/timeline_tile.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    //define all the variables here
    String travellersName = "Priyanshu";
    travellersName = "$travellersName 👋🏻";
    

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: 430,
          height: 170,
          decoration: const BoxDecoration(
            color: keyColor,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(14),
                bottomRight: Radius.circular(14)),
          ),
          child: Row(
            children: [
              Container(
                width: 90,
                height: 90,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  // shape: BoxShape.circle,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Image.asset(
                  'assets/images/Priyanshu.JPG',
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: [
                  const Text("Hey there,", 
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    ),
                  ),
                  Text(travellersName,
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const Icon(
                Icons.notifications,
                color:secondaryColor,
              ),
              const Column(
                children: [
                  Icon(Icons.settings,
                  color: secondaryColor,
                  ),
                  Icon(Icons.menu_book,
                  color: secondaryColor,)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
