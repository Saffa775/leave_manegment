// ignore_for_file: use_build_context_synchronously, non_constant_identifier_names, file_names, avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:leave_manegment/MODELS/Student-Model.dart';
import 'package:leave_manegment/OTHER/staticdata.dart';
import 'package:leave_manegment/STUDENT/SIGN-UP.dart';

import 'package:leave_manegment/STUDENT/STUDENT-DASHBOARD/Student-Dashboard.dart';

class StudentLogin extends StatefulWidget {
  const StudentLogin({super.key});

  @override
  State<StudentLogin> createState() => _StudentLoginState();
}

class _StudentLoginState extends State<StudentLogin> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final Passwordcontroller = TextEditingController();

    final RollNumbercontroller = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: height,
              width: width,
              color: const Color.fromARGB(255, 6, 47, 80),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.arrow_back,
                            size: 30,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.09,
                    width: width,
                    // color: Colors.amber,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Welcome Back",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                        Text(
                          "Enter your credential to login",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: height * 0.6,
                    width: width,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: height * 0.3,
                          width: width * 0.8,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            // border: Border.all(color: Colors.black)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Card(
                                elevation: 10,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Container(
                                  height: height * 0.07,
                                  width: width * 0.7,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white),
                                  child: TextFormField(
                                    keyboardType: TextInputType.text,
                                    style: const TextStyle(
                                      color: Color.fromARGB(255, 6, 47, 80),
                                    ),
                                    controller: RollNumbercontroller,
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      // fillColor: Colors.red,
                                      // filled: true,
                                      contentPadding:
                                          EdgeInsets.symmetric(vertical: 20),
                                      prefixIcon: Icon(
                                        Icons.book,
                                      ),
                                      hintText: 'Roll Number',
                                      hintStyle: TextStyle(
                                        color: Color.fromARGB(255, 6, 47, 80),
                                        fontSize: 12,
                                      ),
                                      labelStyle: TextStyle(color: Colors.red),
                                    ),
                                    validator: (String? value) {
                                      if (value!.isEmpty) {
                                        return 'Please enter some text';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                              Card(
                                elevation: 10,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Container(
                                  height: height * 0.07,
                                  width: width * 0.7,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white),
                                  child: TextFormField(
                                    keyboardType: TextInputType.text,
                                    style: const TextStyle(
                                      color: Color.fromARGB(255, 6, 47, 80),
                                    ),
                                    controller: Passwordcontroller,
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      // fillColor: Colors.red,
                                      // filled: true,
                                      contentPadding:
                                          EdgeInsets.symmetric(vertical: 20),
                                      prefixIcon: Icon(
                                        Icons.password,
                                      ),
                                      hintText: 'Password',
                                      hintStyle: TextStyle(
                                        color: Color.fromARGB(255, 6, 47, 80),
                                        fontSize: 12,
                                      ),
                                      labelStyle: TextStyle(color: Colors.red),
                                    ),
                                    validator: (String? value) {
                                      if (value!.isEmpty) {
                                        return 'Please enter some text';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () async {
                                  QuerySnapshot Snapshot =
                                      await FirebaseFirestore.instance
                                          .collection("Student-Registration")
                                          .where("studentrollnumber",
                                              isEqualTo:
                                                  RollNumbercontroller.text)
                                          .where("studentpassword",
                                              isEqualTo:
                                                  Passwordcontroller.text)
                                          .get();
                                  if (Snapshot.docs.isEmpty) {
                                  } else {
                                    StudentModel model = StudentModel.fromMap(
                                        Snapshot.docs[0].data()
                                            as Map<String, dynamic>);
                                    StaticData.modelstu = model;
                                    print(model);
                                    print("----------");
                                    print(StaticData.modelstu);
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const StudentDashboard(),
                                        ));
                                  }
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height: height * 0.06,
                                  width: width * 0.3,
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(255, 6, 47, 80),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                            height: height * 0.2,
                            width: width,
                            // color: Colors.amber,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  "Forgot password?",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 6, 47, 80),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                                SizedBox(
                                  height: height * 0.04,
                                  width: width * 0.7,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        alignment: Alignment.topRight,
                                        height: height * 0.05,
                                        width: width * 0.5,
                                        child: const Text(
                                          "Don't have an account?",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 6, 47, 80),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.topLeft,
                                        height: height * 0.05,
                                        width: width * 0.2,
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const StudentsSignUp(),
                                                ));
                                          },
                                          child: const Text(
                                            "Sign Up",
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 61, 137, 199),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.04, left: width * 0.7),
              child: Container(
                height: height * 0.1,
                width: width * 0.2,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage("images/signup.jpeg"),
                        fit: BoxFit.contain)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
