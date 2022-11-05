import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume_app/widgets.dart';

class History extends StatelessWidget {
  const History({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: Column(
          children: [
            header("My History"),
            history("Secondary school, Lumen Christi", "2012 - 2018"),
            history("Covenant University, BSc", "2018 - 2022"),
            history("Fullstack development, NIIT", "2021"),
            history("HNG Internship, Mobile", "2022"),
          ],
        ),
      ),
    );
  }
}
