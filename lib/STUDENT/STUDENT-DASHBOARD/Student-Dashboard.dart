// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:leave_manegment/MODELS/AdminModel.dart';

import 'package:leave_manegment/PAINTERS/Lower-Painter-Dashboard.dart';
import 'package:leave_manegment/STUDENT/STUDENT-DASHBOARD/Applyleave.dart';
import 'package:leave_manegment/STUDENT/STUDENT-DASHBOARD/Leave-Eligibility.dart';
import 'package:leave_manegment/STUDENT/STUDENT-DASHBOARD/Leave-history.dart';
import 'package:leave_manegment/STUDENT/STUDENT-DASHBOARD/ACTIVITY/YOUR-ACTIVITY.dart';

class StudentDashboard extends StatefulWidget {
  const StudentDashboard({super.key});

  @override
  State<StudentDashboard> createState() => _StudentDashboardState();
}

class _StudentDashboardState extends State<StudentDashboard> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: height,
        width: width,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: height * 0.3,
                width: width,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: height * 0.06,
                      width: width,
                      // color: Colors.amber,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: const Icon(
                                Icons.arrow_back,
                                size: 30,
                                color: Color.fromARGB(255, 6, 47, 80),
                              ),
                            ),
                            const Icon(Icons.more_vert,
                                size: 30,
                                color: Color.fromARGB(
                                  255,
                                  6,
                                  47,
                                  80,
                                ))
                          ],
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      height: height * 0.06,
                      width: width,
                      // color: Colors.amber,
                      child: const Text(
                        "Welcome to Dashboard",
                        style: TextStyle(
                            color: Color.fromARGB(
                              255,
                              6,
                              47,
                              80,
                            ),
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.15,
                      width: width,
                      // color: Colors.amber,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: height * 0.1,
                            width: width * 0.25,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(
                                  255,
                                  6,
                                  47,
                                  80,
                                ),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "total leaves",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "10",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: height * 0.1,
                            width: width * 0.25,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(
                                  255,
                                  6,
                                  47,
                                  80,
                                ),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "Remaining leaves",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "6",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: height * 0.1,
                            width: width * 0.25,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(
                                  255,
                                  6,
                                  47,
                                  80,
                                ),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "consumed leaves",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "4",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  Container(
                    alignment: Alignment.bottomCenter,
                    height: height * 0.62,
                    width: width,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: Container(
                      height: height * 0.2,
                      width: width,
                      color: Colors.grey[300],
                      child: CustomPaint(
                        painter: LowerPainter(),
                      ),
                    ),
                  ), ///////////////////////

                  Padding(
                    padding:
                        EdgeInsets.only(top: height * 0.02, left: width * 0.04),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ApplyLeave(modeladmin: AdminModel())));
                      },
                      child: Container(
                        height: height * 0.2,
                        width: width * 0.4,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Container(
                              height: height * 0.15,
                              width: width * 0.4,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20)),
                                  image: DecorationImage(
                                    image: AssetImage("images/applyleave.jpeg"),
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: height * 0.04,
                              width: width * 0.5,
                              child: const Text(
                                "Apply for leave",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 6, 47, 80),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: height * 0.02, left: width * 0.5),
                    child: Container(
                      height: height * 0.2,
                      width: width * 0.4,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MyActivity()));
                        },
                        child: Column(
                          children: [
                            Container(
                              height: height * 0.15,
                              width: width * 0.4,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20)),
                                  image: DecorationImage(
                                    image: AssetImage("images/activity.jpeg"),
                                    fit: BoxFit.cover,
                                  )),
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: height * 0.04,
                              width: width * 0.5,
                              child: const Text(
                                "Your activity",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 6, 47, 80),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: height * 0.24, left: width * 0.04),
                    child: Container(
                      height: height * 0.2,
                      width: width * 0.4,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const MyApplyHistory(),
                                  ));
                            },
                            child: Container(
                              height: height * 0.15,
                              width: width * 0.4,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20)),
                                  image: DecorationImage(
                                    image: AssetImage("images/history.jpeg"),
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: height * 0.04,
                            width: width * 0.5,
                            child: const Text(
                              "Leave history",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 6, 47, 80),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: height * 0.24, left: width * 0.5),
                    child: Container(
                      height: height * 0.2,
                      width: width * 0.4,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MyEligibility(),
                                  ));
                            },
                            child: Container(
                              height: height * 0.15,
                              width: width * 0.4,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20)),
                                  image: DecorationImage(
                                    image:
                                        AssetImage("images/eligibility.jpeg"),
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: height * 0.04,
                            width: width * 0.5,
                            child: const Text(
                              "Eligibility",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 6, 47, 80),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
