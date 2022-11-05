import 'package:flutter/material.dart';
import 'package:resume_app/widgets.dart';

class Skills extends StatelessWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Column(
          children: [
            header("My Skills"),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(20)),
                    width: double.infinity,
                    height: 400,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            text("Skills", 20.0, Colors.black),
                            const SizedBox(
                              height: 10,
                            ),
                            Divider(
                              height: 5.0,
                              thickness: 2.0,
                              color: Colors.grey.shade600,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                text("HTML", 20.0, Colors.black),
                                text("95%", 20.0, Colors.black),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            indicator(context, 0.95),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                text("CSS", 20.0, Colors.black),
                                text("79%", 20.0, Colors.black),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            indicator(
                              context,
                              0.79,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                text("Python", 20.0, Colors.black),
                                text("70%", 20.0, Colors.black),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            indicator(context, 0.7),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                text("Dart & Flutter", 20.0, Colors.black),
                                text("60%", 20.0, Colors.black),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            indicator(context, 0.6),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                text("Can do attitude", 20.0, Colors.black),
                                text("100%", 20.0, Colors.black),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            indicator(context, 1.0),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Container(
                  //   child: Column(
                  //     children: [
                  //       text("Interests", 30, Colors.black),
                  //       Row(
                  //         children: [
                  //           text("Mobile design", 20, Colors.black),
                  //           text("Mobile design", 20, Colors.black),
                  //           text("Mobile design", 20, Colors.black),
                  //         ],
                  //       )
                  //     ],
                  //   ),
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
