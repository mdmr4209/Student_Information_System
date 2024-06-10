import 'package:flutter/material.dart';
import 'package:ums/widgets/widget.dart';

class StudentFeeForm extends StatefulWidget {
  @override
  _StudentFeeFormState createState() => _StudentFeeFormState();
}

class _StudentFeeFormState extends State<StudentFeeForm> {
  String? selectedId = '2014751201';
  String? selectedCourse = 'Bsc';
  String? selectedBranch = 'CSE';
  String? selectedSemester = '1st';

  final List<String> ids = ['2014751201', '2014751202', '2014751203', '2014751204'];
  final List<String> courses = ['Bsc', 'BTech', 'BA'];
  final List<String> department = ['CSE', 'ECE', 'EEE'];
  final List<String> semesters = ['1st', '2nd', '3rd', '4th', '5th', '6th', '7th', '8th'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Student Fee Form",
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
      body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Card(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                color: Colors.white,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Text('Select Id No', style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(width: 10),
                          DropdownButton(
                            value: selectedId,
                            onChanged: (newValue) {
                              setState(() {
                                selectedId = newValue;
                              });
                            },
                            items: ids.map((id) {
                              return DropdownMenuItem(
                                value: id,
                                child: Text(id),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Name',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Father\'s Name',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        children: [
                          Text('Course', style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(width: 10),
                          DropdownButton(
                            value: selectedCourse,
                            onChanged: (newValue) {
                              setState(() {
                                selectedCourse = newValue;
                              });
                            },
                            items: courses.map((course) {
                              return DropdownMenuItem(
                                value: course,
                                child: Text(course),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        children: [
                          Text('Department', style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(width: 10),
                          DropdownButton(
                            value: selectedBranch,
                            onChanged: (newValue) {
                              setState(() {
                                selectedBranch = newValue;
                              });
                            },
                            items: department.map((branch) {
                              return DropdownMenuItem(
                                value: branch,
                                child: Text(branch),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        children:[
                          Text('Semester', style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(width: 10),
                          DropdownButton(
                            value: selectedSemester,
                            onChanged: (newValue) {
                              setState(() {
                                selectedSemester = newValue;
                              });
                            },
                            items: semesters.map((semester) {
                              return DropdownMenuItem(
                                value: semester,
                                child: Text(semester),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Total Payable',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  "Your Payment is paid",
                                  style: TextStyle(color: Colors.green),
                                ),
                              ),
                            );
                            },
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                                backgroundColor: Colors.greenAccent,
                              ),
                              child: Text('Pay', style: TextStyle(color: Colors.black))
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/homepage');
                            },
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                                backgroundColor: Colors.black87,
                              ),
                              child: Text('Back', style: TextStyle(color: Colors.white))
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
    );
  }
}
