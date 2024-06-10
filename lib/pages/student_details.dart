import 'package:flutter/material.dart';

import '../widgets/widget.dart';
class StudentDetails extends StatelessWidget {
  const StudentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Student Details",
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
                    DataColumn(label: Text("Father's Name")),
                    DataColumn(label: Text('Age')),
                    DataColumn(label: Text('DOB (dd/mm/yyyy)')),
                    DataColumn(label: Text('Address')),
                    DataColumn(label: Text('Phone')),
                    DataColumn(label: Text('Email Id')),
                    DataColumn(label: Text('Class X(%)')),
                    DataColumn(label: Text('Class XII(%)')),
                    DataColumn(label: Text('Village Address')),
                    DataColumn(label: Text('Course')),
                    DataColumn(label: Text('Department')),
                  ],
                  rows: [DataRow(cells: [
                    DataCell(Text('2014751201')),
                    DataCell(Text('MD. Mahbubur Rahman')),
                    DataCell(Text('Abdul Mannan')),
                    DataCell(Text('24')),
                    DataCell(Text('14/11/1999')),
                    DataCell(Text('Mugda, Dhaka')),
                    DataCell(Text('017*********')),
                    DataCell(Text('mahbub*********@gmail.com')),
                    DataCell(Text('92.00')),
                    DataCell(Text('64.00')),
                    DataCell(Text('Mugda, Dhaka')),
                    DataCell(Text('BSc')),
                    DataCell(Text('CSE')),
                  ]),
                    DataRow(cells: [
                      DataCell(Text('"A"')),
                      DataCell(Text('"B"')),
                      DataCell(Text('"C"')),
                      DataCell(Text('"D"')),
                      DataCell(Text('"E"')),
                      DataCell(Text('"F"')),
                      DataCell(Text('"G"')),
                      DataCell(Text('"H"')),
                      DataCell(Text('"I"')),
                      DataCell(Text('"J"')),
                      DataCell(Text('"K"')),
                      DataCell(Text('"L"')),
                      DataCell(Text('"M"')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('"A1"')),
                      DataCell(Text('"B1"')),
                      DataCell(Text('"C1"')),
                      DataCell(Text('"D1"')),
                      DataCell(Text('"E1"')),
                      DataCell(Text('"F1"')),
                      DataCell(Text('"G1"')),
                      DataCell(Text('"H1"')),
                      DataCell(Text('"I1"')),
                      DataCell(Text('"J1"')),
                      DataCell(Text('"K1"')),
                      DataCell(Text('"L1"')),
                      DataCell(Text('"M1"')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('"A2"')),
                      DataCell(Text('"B2"')),
                      DataCell(Text('"C2"')),
                      DataCell(Text('"D2"')),
                      DataCell(Text('"E2"')),
                      DataCell(Text('"F2"')),
                      DataCell(Text('"G2"')),
                      DataCell(Text('"H2"')),
                      DataCell(Text('"I2"')),
                      DataCell(Text('"J2"')),
                      DataCell(Text('"K2"')),
                      DataCell(Text('"L2"')),
                      DataCell(Text('"M2"')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('"A3"')),
                      DataCell(Text('"B3"')),
                      DataCell(Text('"C3"')),
                      DataCell(Text('"D3"')),
                      DataCell(Text('"E3"')),
                      DataCell(Text('"F3"')),
                      DataCell(Text('"G3"')),
                      DataCell(Text('"H3"')),
                      DataCell(Text('"I3"')),
                      DataCell(Text('"J3"')),
                      DataCell(Text('"K3"')),
                      DataCell(Text('"L3"')),
                      DataCell(Text('"M3"')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('"A4"')),
                      DataCell(Text('"B4"')),
                      DataCell(Text('"C4"')),
                      DataCell(Text('"D4"')),
                      DataCell(Text('"E4"')),
                      DataCell(Text('"F4"')),
                      DataCell(Text('"G4"')),
                      DataCell(Text('"H4"')),
                      DataCell(Text('"I4"')),
                      DataCell(Text('"J4"')),
                      DataCell(Text('"K4"')),
                      DataCell(Text('"L4"')),
                      DataCell(Text('"M4"')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('"A5"')),
                      DataCell(Text('"B5"')),
                      DataCell(Text('"C5"')),
                      DataCell(Text('"D5"')),
                      DataCell(Text('"E5"')),
                      DataCell(Text('"F5"')),
                      DataCell(Text('"G5"')),
                      DataCell(Text('"H5"')),
                      DataCell(Text('"I5"')),
                      DataCell(Text('"J5"')),
                      DataCell(Text('"K5"')),
                      DataCell(Text('"L5"')),
                      DataCell(Text('"M5"')),
                    ])
                  ],
                ),
              ),
              SizedBox(height: 15,),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Enter ID number to delete student',
                  labelStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2.0,
                    )
                  )
                ),
              ),
              SizedBox(height: 10,),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          "Student Account Deleted.",
                          style: TextStyle(color: Colors.redAccent),
                        ),
                      ),
                    );
                  },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      backgroundColor: Colors.grey[800],
                    ),
                    child: Text('Delete', style: TextStyle(color: Colors.white))
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/addstdpage');
                },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    backgroundColor: Colors.greenAccent,
                  ),
                  child: Text('Add Student', style: TextStyle(color: Colors.black))
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/updatestdpage');
                },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    backgroundColor: Colors.teal[400],
                  ),
                  child: Text('Update Student Details', style: TextStyle(color: Colors.white))
              ),
            ],
          ),
        ),
      ),
    );
  }
}
