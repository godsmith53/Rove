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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 40, right: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Rove",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color.fromRGBO(41, 41, 41, 1),
                    fontSize: 45,
                    fontWeight: FontWeight.w800),
              ),
              const Text(
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
                        const Image(
                          image: AssetImage("assets/images/login.png"),
                          width: 400,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "E-mail",
                            hintText: "student@gmail.com",
                            hintStyle: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight
                                  .w400, // Change hint text font weight here
                            ),
                            prefixIcon: const Icon(Icons.person),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: "Password",
                            hintStyle: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight
                                  .w400, // Change hint text font weight here
                            ),
                            hintText: "student@gmail.com",
                            prefixIcon: const Icon(Icons.password),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.fromLTRB(
                                138, 15, 138, 15), // Button padding
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  10.0), // Button border radius
                            ),
                          ),
                          child: const Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromRGBO(41, 41, 41, 1),
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Forgot Password?",
                              style: TextStyle(
                                  fontSize: 14, fontStyle: FontStyle.italic),
                            ))
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
