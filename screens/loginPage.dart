import 'package:flutter/material.dart';
import 'package:rove/customs/button.dart';
import 'package:rove/customs/textField.dart';
import 'package:rove/screens/homeScreen.dart';
import 'package:rove/utils/colors.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(25, 60, 25, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Rove",
                      style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 40,
                          fontWeight: FontWeight.w800),
                    ),
                    Text(
                      "Welcomes You",
                      style: TextStyle(
                          color: AppColors.secondaryColor,
                          fontSize: 30,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Image(
                      image: AssetImage("assets/images/login.png"),
                    ),
                    MyTextField(
                        myIcon: Icon(Icons.person),
                        myLabelText: "E-Mail",
                        myObscureText: false),
                    SizedBox(
                      height: 20,
                    ),
                    MyTextField(
                        myIcon: Icon(Icons.password),
                        myLabelText: "Password",
                        myObscureText: true),
                    SizedBox(
                      height: 20,
                    ),
                    MyButton(
                        onTap: () {Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()),
                          );},
                        myButtonColor: AppColors.primaryColor,
                        myButtonText: "Log In",
                        myButtonTextColor: Colors.white),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  // padding: EdgeInsets.fromLTRB(130, 0, 0, 0),
                  shape: RoundedRectangleBorder(),
                ),
                child: Text(
                  'Forgot Password',
                  style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}









// import 'package:flutter/material.dart';
// import 'package:rove/customs/button.dart';
// import 'package:rove/customs/textField.dart';
// import 'package:rove/screens/homeScreen.dart';
// import 'package:rove/utils/colors.dart';

// class LoginPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               Padding(
//                 padding: EdgeInsets.fromLTRB(25, 60, 25, 0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     SizedBox(
//                       height: 30,
//                     ),
//                     Text(
//                       "Rove",
//                       style: TextStyle(
//                           color: AppColors.primaryColor,
//                           fontSize: 40,
//                           fontWeight: FontWeight.w800),
//                     ),
//                     Text(
//                       "Welcomes You",
//                       style: TextStyle(
//                           color: AppColors.secondaryColor,
//                           fontSize: 30,
//                           fontWeight: FontWeight.w600),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Image(
//                       image: AssetImage("assets/images/login.png"),
//                     ),
//                     MyTextField(
//                         myIcon: Icon(Icons.person),
//                         myLabelText: "E-Mail",
//                         myObscureText: false),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     MyTextField(
//                         myIcon: Icon(Icons.password),
//                         myLabelText: "Password",
//                         myObscureText: true),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     MyButton(
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => HomeScreen()),
//                           );
//                         },
//                         myButtonColor: AppColors.primaryColor,
//                         myButtonText: "Log In",
//                         myButtonTextColor: Colors.white),
//                   ],
//                 ),
//               ),
//               TextButton(
//                 onPressed: () {},
//                 style: TextButton.styleFrom(
//                   // padding: EdgeInsets.fromLTRB(130, 0, 0, 0),
//                   shape: RoundedRectangleBorder(),
//                 ),
//                 child: Text(
//                   'Forgot Password',
//                   style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
