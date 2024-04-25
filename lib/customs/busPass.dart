import 'package:flutter/material.dart';
import 'package:rove/utils/colors.dart';
import 'package:rove/utils/textTheme.dart';

class BusPass {
  final String userName;
  final String userStudentId;
  final String userAllotedBus;
  final String userDepartment;
  final String userValidity;
  final String userPhoneNumber;
  final String userFeesStatus;
  final String userAddress;
  final String userBranch;
  final String userImage;

  BusPass({
    required this.userName,
    required this.userStudentId,
    required this.userAllotedBus,
    required this.userDepartment,
    required this.userValidity,
    required this.userPhoneNumber,
    required this.userFeesStatus,
    required this.userAddress,
    required this.userBranch,
    required this.userImage,
  });

  // A method to deserialize a map to a BusPass object
  factory BusPass.fromMap(Map<String, dynamic> map) {
    return BusPass(
      userName: map['userName'],
      userStudentId: map['userStudentId'],
      userAllotedBus: map['userAllotedBus'],
      userDepartment: map['userDepartment'],
      userValidity: map['userValidity'],
      userPhoneNumber: map['userPhoneNumber'],
      userFeesStatus: map['userFeesStatus'],
      userAddress: map['userAddress'],
      userBranch: map['userBranch'],
      userImage: map['userImage'],
    );
  }

  // A method to serialize a BusPass object to a map
  Map<String, dynamic> toMap() {
    return {
      'userName': userName,
      'userStudentId': userStudentId,
      'userAllotedBus': userAllotedBus,
      'userDepartment': userDepartment,
      'userValidity': userValidity,
      'userPhoneNumber': userPhoneNumber,
      'userFeesStatus': userFeesStatus,
      'userAddress': userAddress,
      'userBranch': userBranch,
      'userImage': userImage,
    };
  }
}

class BusPassWidget extends StatelessWidget {
  final BusPass busPass;

  BusPassWidget({required this.busPass});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .9,
      height: 652,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
          color: AppColors.primaryColor, // Border color
          width: 2.0, // Border width
        ),
      ),
      child: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(17),
            child: Row(
              children: [
                Container(
                  width: 120,
                  height: 160,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(busPass.userImage),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: AppColors.primaryColor, // Border color
                      width: 1.0, // Border width
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      image: AssetImage("assets/logos/collegeLogo.png"),
                      width: 68,
                    ),
                    SizedBox(
                      height: 23,
                    ),
                    MyTextSpace(
                        myMainText: "Validity",
                        myMainTextColor: AppColors.primaryColor),
                    SizedBox(
                      height: 26,
                    ),
                    MyTextSpace(
                        myMainText: "Fees",
                        myMainTextColor: AppColors.primaryColor)
                  ],
                ),
                SizedBox(
                  width: 23,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const SizedBox(
                      height: 13,
                    ),
                    const Image(
                      image: AssetImage("assets/logos/collegeNameLogo.png"),
                      width: 80,
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    MyTextSpace(
                        myMainText: busPass.userValidity,
                        myMainTextColor: AppColors.primaryColor),
                    const SizedBox(
                      height: 27,
                    ),
                    MyTextSpace(
                        myMainText: busPass.userFeesStatus,
                        myMainTextColor: Colors.green)
                  ],
                )
              ],
            ),
          ),

          const SizedBox(
            height: 6,
          ),
          ListTile(
            leading: const MyTextSpace(
              myMainText: "College ID",
              myMainTextColor: AppColors.primaryColor,
            ),
            trailing: MyTextSpace(
              myMainText: busPass.userStudentId,
              myMainTextColor: AppColors.secondaryColor,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          ListTile(
            leading: const MyTextSpace(
              myMainText: "Name",
              myMainTextColor: AppColors.primaryColor,
            ),
            trailing: MyTextSpace(
              myMainText: busPass.userName,
              myMainTextColor: AppColors.secondaryColor,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          ListTile(
            leading: const MyTextSpace(
              myMainText: "Course",
              myMainTextColor: AppColors.primaryColor,
            ),
            trailing: MyTextSpace(
              myMainText: busPass.userDepartment,
              myMainTextColor: AppColors.secondaryColor,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          ListTile(
            leading: const MyTextSpace(
              myMainText: "Branch",
              myMainTextColor: AppColors.primaryColor,
            ),
            trailing: MyTextSpace(
              myMainText: busPass.userBranch,
              myMainTextColor: AppColors.secondaryColor,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          ListTile(
            leading: const MyTextSpace(
              myMainText: "Phone",
              myMainTextColor: AppColors.primaryColor,
            ),
            trailing: MyTextSpace(
              myMainText: busPass.userPhoneNumber,
              myMainTextColor: AppColors.secondaryColor,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          ListTile(
            leading: const MyTextSpace(
              myMainText: "Boarding Point",
              myMainTextColor: AppColors.primaryColor,
            ),
            trailing: MyTextSpace(
              myMainText: busPass.userAddress,
              myMainTextColor: AppColors.secondaryColor,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          ListTile(
            leading: const MyTextSpace(
              myMainText: "Alloted Bus",
              myMainTextColor: AppColors.primaryColor,
            ),
            trailing: MyTextSpace(
              myMainText: busPass.userAllotedBus,
              myMainTextColor: AppColors.secondaryColor,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
        ],
      ),
    );
  }
}
