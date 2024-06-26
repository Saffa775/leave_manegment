// ignore_for_file: prefer_const_constructors, file_names, unused_import

import 'package:flutter/material.dart';
import 'package:leave_manegment/STUDENT/STUDENT-DASHBOARD/ACTIVITY/Approved-requests.dart';
import 'package:leave_manegment/STUDENT/STUDENT-DASHBOARD/ACTIVITY/Pendingreq.dart';
import 'package:leave_manegment/STUDENT/STUDENT-DASHBOARD/ACTIVITY/Rejected-requests.dart';
import 'package:leave_manegment/TEACHER/TEACHER-DASHBOARD/Approvedrequests.dart';
import 'package:leave_manegment/TEACHER/TEACHER-DASHBOARD/Rejectedrequests.dart';
import 'package:leave_manegment/TEACHER/TEACHER-DASHBOARD/pending%20requests.dart';

class TeacherActivity extends StatefulWidget {
  const TeacherActivity({super.key});

  @override
  State<TeacherActivity> createState() => _TeacherActivityState();
}

class _TeacherActivityState extends State<TeacherActivity> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: height,
          width: width,
          color: Color.fromARGB(255, 6, 47, 80),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Icon(
                          Icons.arrow_back,
                          size: 30,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  Container(
                      height: height * 0.7,
                      width: width * 0.7,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 6, 47, 80),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: height * 0.3,
                            width: width * 0.7,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 6, 47, 80),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              TeacherPendingRequests(),
                                        ));
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: height * 0.07,
                                    width: width * 0.4,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Text(
                                      "Pending Requests",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              TeacherApprovedRequests(),
                                        ));
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: height * 0.07,
                                    width: width * 0.4,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Text(
                                      "Approved Requests",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              TeacherRejectedRequests(),
                                        ));
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: height * 0.07,
                                    width: width * 0.4,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Text(
                                      "Rejected Requests",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
