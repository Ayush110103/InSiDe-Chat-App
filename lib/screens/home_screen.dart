import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:inside/api/apis.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      //appBar
      appBar: AppBar(
        leading :const Icon(CupertinoIcons.home),
        title:const Text('Inside'),
        actions:[
          // search user button
          IconButton(onPressed:() {}, icon: const Icon(Icons.search)),
          // more Features Button
          IconButton(onPressed:() {}, icon: const Icon(Icons.more_vert))
        ]



      ),
      //to add new user
      // floating butting to add new user
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom:10),
        child: FloatingActionButton(
          onPressed: ()
         async {
      await APIs.auth.signOut();
      await GoogleSignIn().signOut();
    }
           ,child: const Icon(Icons.add_comment_rounded)
        ),
      ),
    );
  }
}
