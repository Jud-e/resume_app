import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

Widget header(String info) {
  return Container(
    decoration: BoxDecoration(color: Colors.black),
    width: double.infinity,
    child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: text(info, 40.0, Colors.white)),
  );
}

Widget text(String text, double size, Color color) {
  return Text(
    text,
    style: GoogleFonts.didactGothic(
        fontSize: size, color: color, fontWeight: FontWeight.w700),
  );
}

Widget indicator(context, double percentage) {
  return LinearPercentIndicator(
    width: MediaQuery.of(context).size.width - 86,
    lineHeight: 15.0,
    animation: true,
    animationDuration: 1000,
    percent: percentage,
    barRadius: const Radius.circular(30),
    progressColor: Color.fromARGB(255, 45, 162, 212),
  );
}

Widget history(String header, String duration) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 18.0),
    child: Container(
      height: 120.0,
      decoration: BoxDecoration(
          color: Colors.grey.shade400, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: double.infinity,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 45, 162, 212),
                  borderRadius: BorderRadius.circular(10)),
              child: const Padding(
                padding: EdgeInsets.all(30.0),
                child: Icon(
                  Icons.auto_stories_rounded,
                ),
              ),
            ),
            Column(
              children: [
                text(header, 13, Colors.black),
                text(duration, 13, Colors.black),
              ],
            )
          ],
        ),
      ),
    ),
  );
}

Widget column(String nameOfProject, String description, String url) {
  return Column(
    children: [
      InkWell(
        onTap: () {
          launchUrl(Uri.parse(url));
        },
        child: Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/background2.jpg"),
                  fit: BoxFit.cover)),
          child: Center(
            child: text("Click for github", 30, Colors.white),
          ),
        ),
      ),
      Container(
        height: 180,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              text(nameOfProject, 30, Colors.black),
              Divider(
                thickness: 1,
                color: Colors.black,
              ),
              text(description, 20, Colors.black),
            ],
          ),
        ),
      )
    ],
  );
}
