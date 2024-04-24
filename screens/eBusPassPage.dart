import 'package:flutter/material.dart';
import 'package:rove/customs/busPass.dart';
import 'package:rove/customs/customAppBar.dart';
import 'package:rove/screens/notificationPage.dart';
import 'package:rove/screens/menuPage.dart';

class EBusPassPage extends StatelessWidget {
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NotificationPage()));
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
                    BusPass(
                        myUserValidity: "2020-24",
                        myUserFeesStatus: "Paid",
                        myUserStudentId: "61200154",
                        myUserName: "Priyanshu Kumar",
                        myUserDepartment: "CSE",
                        myUserBranch: "B-Tech",
                        myUserPhoneNumber: "79057 96473",
                        myUserAddress: "Naini",
                        myUserAllotedBus: "B2",
                        myUserImage: "assets/images/priyanshu.jpg"),
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
