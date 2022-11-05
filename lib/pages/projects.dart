import 'package:flutter/material.dart';
import 'package:resume_app/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: Column(
          children: [
            header("My Projects"),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 200,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10)),
                          child: IconButton(
                              color: Colors.black,
                              icon: Icon(
                                Icons.abc,
                                size: 70,
                              ),
                              onPressed: () {
                                showModalBottomSheet(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return SizedBox(
                                          height: 400,
                                          child: Center(
                                            child: column(
                                                "Merge-Sort algorithm",
                                                "A project making use of merge sort algorithm in python(using Flask)",
                                                "https://github.com/Jud-e"),
                                          ));
                                    });
                              }),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          height: 200,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10)),
                          child: IconButton(
                              color: Colors.black,
                              icon: Icon(
                                Icons.abc,
                                size: 70,
                              ),
                              onPressed: () {
                                showModalBottomSheet(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return SizedBox(
                                          height: 400,
                                          child: Center(
                                            child: column(
                                                "ManageOps",
                                                "A staff management system built for Covenant University to handle its promotion criterias",
                                                "https://github.com/Jud-e"),
                                          ));
                                    });
                              }),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 200,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10)),
                          child: IconButton(
                              color: Colors.black,
                              icon: Icon(
                                Icons.abc,
                                size: 70,
                              ),
                              onPressed: () {
                                showModalBottomSheet(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return SizedBox(
                                          height: 400,
                                          child: Center(
                                            child: column(
                                                "Portfolio",
                                                "A simple portfolio built with flutter and Dart",
                                                "https://github.com/Jud-e"),
                                          ));
                                    });
                              }),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
