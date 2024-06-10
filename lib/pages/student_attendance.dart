import 'package:flutter/material.dart';
import '../widgets/widget.dart';

class StudentAttendance extends StatelessWidget {
  const StudentAttendance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Student Attedance",
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Select ID Number',
              ),
              items:[
                '2014751201',
                '2014751202',
                '2014751203',
                '2014751204',
                '2014751205',
              ].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (_) {},
            ),
            SizedBox(
              height: 15,
            ),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Attendance',
              ),
              items: ['Present', 'Absent', 'Leave'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (_) {},
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Date',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            "Attedance Updated",
                            style: TextStyle(color: Colors.greenAccent),
                          ),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      backgroundColor: Colors.grey[800],
                    ),
                    child:
                        Text('Submit', style: TextStyle(color: Colors.white))),
                SizedBox(
                  width: 15,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/homepage');
                    },
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      backgroundColor: Colors.grey[800],
                    ),
                    child:
                        Text('Cancel', style: TextStyle(color: Colors.white))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
