import 'package:flutter/material.dart';
import 'package:ums/pages/student_attendance.dart';
import 'package:ums/pages/student_fee_form.dart';
import 'package:ums/widgets/widget.dart';
import 'package:ums/pages/student_details.dart';
import 'package:ums/pages/student_attendance_details.dart';
import 'package:ums/pages/student_fee_structure.dart';
import 'package:ums/pages/calculator.dart';

class HomePage extends StatelessWidget {
  final List<Widget> pages = [
    StudentDetails(),
    Calculator(),
    StudentAttendance(),
    StudentAttendanceDetails(),
    StudentFeeForm(),
    StudentFeeStructure(),
  ];
  final List<String> pagesName = [
    "Student Details",
    "Calculator",
    "Student Attendance",
    "Attendance Details",
    "Student Fee Form",
    "Fee Structure",
  ];
final List<Icon> stdIcon=<Icon>[
  Icon(Icons.document_scanner,size: 60,),
  Icon(Icons.calculate,size: 60,),
  Icon(Icons.edit_calendar_outlined,size: 60,),
  Icon(Icons.document_scanner_outlined,size: 60,),
  Icon(Icons.format_align_center,size: 60,),
  Icon(Icons.money_sharp,size: 60,),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Home Page",
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        backgroundColor: Colors.deepPurple[50],
      ),
      drawer: Drawer1(),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 4.0,
                  crossAxisSpacing: 4.0,
                  childAspectRatio: 1.0,
                ),
                itemCount: pages.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => pages[index]),
                      );
                    },
                    child: Card(
                      shadowColor:Colors.blue ,
                      elevation: 5,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            stdIcon[index],
                            SizedBox(
                              height: 10,
                            ),
                            Text(pagesName[index].toString(),style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
