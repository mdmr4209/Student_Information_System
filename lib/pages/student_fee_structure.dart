import 'package:flutter/material.dart';

class StudentFeeStructure extends StatelessWidget {
  const StudentFeeStructure({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Fee Structure'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DataTable(
                border: TableBorder.all(
                  color: Colors.black,
                  width: 2.0,
                ),
                columns: [
                  DataColumn(label: Text('Course')),
                  DataColumn(label: Text('BSc')),
                  DataColumn(label: Text('BBA')),
                  DataColumn(label: Text('BA')),
                  DataColumn(label: Text('MSc')),
                  DataColumn(label: Text('MBA')),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Semester 1')),
                    DataCell(Text('TK 45000')),
                    DataCell(Text('TK 40000')),
                    DataCell(Text('TK 37000')),
                    DataCell(Text('TK 65000')),
                    DataCell(Text('TK 62000')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Semester 2')),
                    DataCell(Text('TK 45000')),
                    DataCell(Text('TK 39000')),
                    DataCell(Text('TK 35000')),
                    DataCell(Text('TK 65000')),
                    DataCell(Text('TK 60000')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Semester 3')),
                    DataCell(Text('TK 44000')),
                    DataCell(Text('TK 40000')),
                    DataCell(Text('TK 35000')),
                    DataCell(Text('TK 64000')),
                    DataCell(Text('TK 58000')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Semester 4')),
                    DataCell(Text('TK 45000')),
                    DataCell(Text('TK 41000')),
                    DataCell(Text('TK 33000')),
                    DataCell(Text('TK 66000')),
                    DataCell(Text('TK 60000')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Semester 5')),
                    DataCell(Text('TK 45000')),
                    DataCell(Text('TK 40000')),
                    DataCell(Text('TK 32000')),
                    DataCell(Text('TK 64000')),
                    DataCell(Text('TK 60000')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Semester 6')),
                    DataCell(Text('TK 41000')),
                    DataCell(Text('TK 42000')),
                    DataCell(Text('TK 35000')),
                    DataCell(Text('TK 64000')),
                    DataCell(Text('TK 58000')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Semester 7')),
                    DataCell(Text('TK 44000')),
                    DataCell(Text('TK 40000')),
                    DataCell(Text('TK 34000')),
                    DataCell(Text('TK 66000')),
                    DataCell(Text('TK 60000')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Semester 8')),
                    DataCell(Text('TK 43000')),
                    DataCell(Text('TK 43000')),
                    DataCell(Text('TK 35000')),
                    DataCell(Text('TK 64000')),
                    DataCell(Text('TK 60000')),
                  ]),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
