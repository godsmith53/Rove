import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rove/customs/busPass.dart';
import 'package:rove/customs/customAppBar.dart';
import 'package:rove/screens/notificationPage.dart';
import 'package:rove/screens/menuPage.dart';
import 'package:rove/utils/textTheme.dart';

class EBusPassPage extends StatelessWidget {
  EBusPassPage({super.key});

  final user = FirebaseAuth.instance.currentUser!;
  //variable for the current user
  final currentUser = FirebaseAuth.instance;
  //COLLECTION REFERENCE
  CollectionReference allUsers = FirebaseFirestore.instance.collection('Users');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(120),
          child: CustomAppBar(
            myUserImage: "assets/images/priyanshu.jpg",
            //
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
                    StreamBuilder(
  stream: FirebaseFirestore.instance
      .collection('Users')
      .where('uid', isEqualTo: currentUser.currentUser!.uid)
      .snapshots(),
  builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
    if (snapshot.hasData) {
      var data = snapshot.data!.docs;
      return FutureBuilder<DocumentSnapshot>(
          future: allUsers.doc('uid').get(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              Map<String, dynamic>? data = snapshot.data?.data() as Map<String, dynamic>?;
              if (data != null) {
                return BusPassWidget(busPass: BusPass.fromMap(data));
              } else {
                return Text("No data found for this user.");
              }
            }
            return Text("Loading your college credentials...");
          });
    }
    return Text('Loading data...');
  })

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
