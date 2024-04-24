import 'package:flutter/material.dart';
import 'package:rove/customs/customAppBar.dart';
import 'package:rove/customs/todaysRide.dart';
import 'package:rove/screens/menuPage.dart';
import 'package:rove/screens/notificationPage.dart';
import 'package:rove/utils/colors.dart';
import 'package:rove/utils/textTheme.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(120),
          child: CustomAppBar(
            myUserImage: "assets/images/priyanshu.jpg",
            onNotificationTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => NotificationPage()));
            },
            onMenuTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MenuPage()));
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyTextSpace(
                        myMainText: "Today's Ride",
                        myMainTextColor: AppColors.primaryColor),
                    SizedBox(
                      height: 20,
                    ),
                    TodaysRide(
                        myFromLocation: "UCER",
                        myToLocation: "Shantipuram",
                        myBusNumber: "B2",
                        myBusETA: "3:50 PM"),
                    SizedBox(
                      height: 20,
                    ),
                    Image(image: AssetImage("assets/images/map1.png")),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
