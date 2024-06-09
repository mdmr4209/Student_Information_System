import 'package:flutter/material.dart';
import 'package:ums/widgets/widget.dart';

class StudentAttendanceDetails extends StatelessWidget {
  const StudentAttendanceDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Student Attendance Details",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        backgroundColor: Colors.deepPurple[50],
      ),
      drawer: Drawer1(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  border: TableBorder.all(
                    color: Colors.black,
                    width: 2.0,
                  ),
                  columns: [
                    DataColumn(label: Text('ID')),
                    DataColumn(label: Text('Name')),
                    DataColumn(label: Text("Date")),
                    DataColumn(label: Text('Attendance')),
                  ],
                  rows: [DataRow(cells: [
                    DataCell(Text('2014751201')),
                    DataCell(Text('MD. Mahbubur Rahman')),
                    DataCell(Text('11/06/24')),
                    DataCell(Text('Present')),
                  ]),
                    DataRow(cells: [
                      DataCell(Text('"A"')),
                      DataCell(Text('"B"')),
                      DataCell(Text('"C"')),
                      DataCell(Text('"D"')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('"A1"')),
                      DataCell(Text('"B1"')),
                      DataCell(Text('"C1"')),
                      DataCell(Text('"D1"')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('"A2"')),
                      DataCell(Text('"B2"')),
                      DataCell(Text('"C2"')),
                      DataCell(Text('"D2"'))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('"A3"')),
                      DataCell(Text('"B3"')),
                      DataCell(Text('"C3"')),
                      DataCell(Text('"D3"'))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('"A4"')),
                      DataCell(Text('"B4"')),
                      DataCell(Text('"C4"')),
                      DataCell(Text('"D4"'))
                    ]),
                    DataRow(cells: [
                      DataCell(Text('"A5"')),
                      DataCell(Text('"B5"')),
                      DataCell(Text('"C5"')),
                      DataCell(Text('"D5"'))
                    ])
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/stdattpage');
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    backgroundColor: Colors.grey[800], // Updated
                  ),
                  child: Text('Update Student Attendanca', style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
