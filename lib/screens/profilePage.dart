import 'package:flutter/material.dart';
import 'package:rove/customs/profileDetails.dart';
import 'package:rove/customs/profilePhoto.dart';
import 'package:rove/utils/colors.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.secondaryColor,
          toolbarHeight: 1,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  ProfilePagePhoto(
                      myProfileImage: "assets/images/priyanshu.jpg",
                      myBannerImage: "assets/images/cover.jpg")
                ],
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProfileDetails(
                        myUserName: "Priyanshu Kumar",
                        myUserStudentId: "61200154",
                        myUserAllotedBus: "B2",
                        myUserCollege: "UCER",
                        myUserDepartment: "CSE",
                        myUserYear: "4",
                        myUserPhoneNumber: "79057 96473",
                        myUserEmergencyContact: "90000 00000",
                        myUserAddress: "Naini"),
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
