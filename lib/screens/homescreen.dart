import "package:flutter/material.dart";

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 40, right: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Rove",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color.fromRGBO(41, 41, 41, 1),
                    fontSize: 45,
                    fontWeight: FontWeight.w800),
              ),
              Text(
                "Welcomes You",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    color: const Color.fromRGBO(137, 137, 137, 1),
                    fontSize: 35,
                    fontWeight: FontWeight.w700),
              ),
              Center(
                child: Column(
                  children: [
                    Column(
                      children: [
                        Image(
                          image: AssetImage("assets/images/login.png"),
                          width: 400,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
