import 'package:flutter/material.dart';
import 'package:ums/pages/calculator.dart';
import 'package:ums/pages/home.dart';
import 'package:ums/pages/add_student.dart';
import 'package:ums/pages/login.dart';
import 'package:ums/pages/student_attendance.dart';
import 'package:ums/pages/student_attendance_details.dart';
import 'package:ums/pages/student_details.dart';
import 'package:ums/pages/student_fee_form.dart';
import 'package:ums/pages/student_fee_structure.dart';
import 'package:ums/pages/update_student_details.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
        routes: {
          '/homepage': (context) => HomePage(),
          '/addstdpage': (context) => NewStudentDetails(),
          '/stddepage': (context) => StudentDetails(),
          '/stdattpage': (context) => StudentAttendance(),
          '/stdattdepage': (context) => StudentAttendanceDetails(),
          '/updatestdpage': (context) => UpdateStudentDetails(),
          '/stdfestr': (context) => StudentFeeStructure(),
          '/stdfefopage': (context) => StudentFeeForm(),
          '/calcopage': (context) => Calculator(),
          '/loginpage': (context) => LoginPage(),
        },
    );
  }
}
