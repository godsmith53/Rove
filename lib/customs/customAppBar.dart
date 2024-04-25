import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rove/screens/loginPage.dart';
import 'package:rove/screens/notificationPage.dart';
import 'package:rove/screens/profilePage.dart';
import 'package:rove/utils/colors.dart';

class CustomAppBar extends StatelessWidget {
  final String myUserImage;
  // final Function()? onNotificationTap;
  final Function()? onMenuTap;

  const CustomAppBar({
    super.key,
    required this.myUserImage,
    // required this.onNotificationTap,
    required this.onMenuTap, 
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 200,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(3), bottomRight: Radius.circular(3))),
      leadingWidth: 100,
      leading: IconButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ProfilePage()));
        },
        icon: CircleAvatar(
          radius: 35,
          backgroundImage: AssetImage(myUserImage),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white, // Border color
                width: 1, // Border width
              ),
            ),
          ),
        ),
      ),
      backgroundColor: AppColors.primaryColor,
      centerTitle: false,
      title: Text(
        "Hi There 👋🏻",
        style: TextStyle(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
      ),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NotificationPage(),
              ),
            );
          },
          icon: Icon(Icons.notifications),
          color: Colors.white,
        ),
        IconButton(
            onPressed: onMenuTap, icon: Icon(Icons.menu), color: Colors.white),
      ],
    );
  }
}
