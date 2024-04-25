import 'package:flutter/material.dart';
import 'package:rove/screens/PrivacyPolicyPage.dart';
import 'package:rove/screens/aboutUsPage.dart';
import 'package:rove/screens/contactUsPage.dart';
import 'package:rove/screens/eBusPassPage.dart';
import 'package:rove/screens/loginPage.dart';
import 'package:rove/utils/colors.dart';
import 'package:rove/utils/textTheme.dart';

class Settings extends StatelessWidget {
  // final String myUserName;
  // final String myUserStudentId;
  // final String myUserAllotedBus;
  // final String myUserCollege;
  // final String myUserDepartment;
  // final String myUserYear;
  // final String myUserPhoneNumber;
  // final String myUserEmergencyContact;
  // final String myUserAddress;

  // const Settings({
  // super.key,
  // required this.myUserName,
  // required this.myUserStudentId,
  // required this.myUserAllotedBus,
  // required this.myUserCollege,
  // required this.myUserDepartment,
  // required this.myUserYear,
  // required this.myUserPhoneNumber,
  // required this.myUserEmergencyContact,
  // required this.myUserAddress,
  // });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width * .9,
        height: 430,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(
            color: AppColors.primaryColor, // Border color
            width: 2.0, // Border width
          ),
        ),
        // child: const Center(
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            const SizedBox(
              height: 10,
            ),
            ListTile(
              leading: MyTextSpace(
                  myMainText: "Bus Pass",
                  myMainTextColor: AppColors.primaryColor),
              trailing: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EBusPassPage()),
                  );
                },
                icon: Icon(Icons.credit_card_outlined),
                color: AppColors.primaryColor,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Container(
              height: 2,
              color: AppColors.primaryColor,
              width: MediaQuery.of(context).size.width * .9,
            ),
            SizedBox(
              height: 6,
            ),
            ListTile(
              leading: MyTextSpace(
                  myMainText: "About Us",
                  myMainTextColor: AppColors.primaryColor),
              trailing: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AboutUsPage()),
                  );
                },
                icon: Icon(Icons.info),
                color: AppColors.primaryColor,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Container(
              height: 2,
              color: AppColors.primaryColor,
              width: MediaQuery.of(context).size.width * .9,
            ),
            SizedBox(
              height: 6,
            ),
            ListTile(
              leading: MyTextSpace(
                  myMainText: "Contact Us",
                  myMainTextColor: AppColors.primaryColor),
              trailing: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ContactUsPage()),
                  );
                },
                icon: Icon(Icons.phone),
                color: AppColors.primaryColor,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Container(
              height: 2,
              color: AppColors.primaryColor,
              width: MediaQuery.of(context).size.width * .9,
            ),
            SizedBox(
              height: 6,
            ),
            ListTile(
              leading: MyTextSpace(
                  myMainText: "Privacy Policy",
                  myMainTextColor: AppColors.primaryColor),
              trailing: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PrivacyPolicyPage()),
                  );
                },
                icon: Icon(Icons.security_rounded),
                color: AppColors.primaryColor,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Container(
              height: 2,
              color: AppColors.primaryColor,
              width: MediaQuery.of(context).size.width * .9,
            ),
            SizedBox(
              height: 6,
            ),
            ListTile(
              leading: MyTextSpace(
                  myMainText: "Reset Password",
                  myMainTextColor: AppColors.primaryColor),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.key),
                color: AppColors.primaryColor,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Container(
              height: 2,
              color: AppColors.primaryColor,
              width: MediaQuery.of(context).size.width * .9,
            ),
            SizedBox(
              height: 6,
            ),
            ListTile(
              leading: MyTextSpace(
                  myMainText: "Logout",
                  myMainTextColor: AppColors.primaryColor),
              trailing: IconButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            side: BorderSide(
                                width: 2.0,
                                color: Colors.black), // Border color and weight
                          ),
                          title: Text(
                            "Are you sure?",
                            style: TextStyle(
                              color:
                                  AppColors.primaryColor, // Text color #292929
                            ),
                          ),
                          actions: <Widget>[
                            TextButton(
                              child: Text(
                                "Cancel",
                                style: TextStyle(
                                  color: AppColors
                                      .primaryColor, // Text color #292929
                                ),
                              ),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                            TextButton(
                              child: Text(
                                "Logout",
                                style: TextStyle(
                                  color: AppColors
                                      .primaryColor, // Text color #292929
                                ),
                              ),
                              onPressed: () {
                                Navigator.pop(context);

                                // Navigate to LoginPage
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage()),
                                );
                              },
                            ),
                          ],
                        );
                      });
                },
                icon: Icon(Icons.logout),
                color: AppColors.primaryColor,
              ),
            ),
            SizedBox(
              height: 6,
            ),
          ],
        ),
      ),
    );
  }
}
