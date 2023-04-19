import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:haan_r_haan/constant/constant.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Center(child: Text("Home")),
        ElevatedButton(onPressed: signOut, child: Text("Sign out"))
      ],
    );
  }
}
