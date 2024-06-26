import 'package:flutter/material.dart';
import 'package:ums/widgets/widget.dart';

class UpdateStudentDetails extends StatelessWidget {
  const UpdateStudentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Update Student Details",
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
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Enter id number to update data"),
                        SizedBox(height: 5),
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 2.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 15),
                  ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            "Now Edit Your Details To Update ",
                            style: TextStyle(color: Colors.greenAccent),
                          ),
                        ),
                      );
                    },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                        backgroundColor: Colors.greenAccent, // Updated
                      ),
                      child: Text('Update', style: TextStyle(color: Colors.black))
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(child: buildTextField("Name")),
                  SizedBox(width: 15),
                  Expanded(child: buildTextField("Father's Name")),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(child: buildTextField("Age")),
                  SizedBox(width: 15),
                  Expanded(child: buildTextField("DOB (dd/mm/yyyy)")),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(child: buildTextField("Address")),
                  SizedBox(width: 15),
                  Expanded(child: buildTextField("Phone")),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(child: buildTextField("Email Id")),
                  SizedBox(width: 15),
                  Expanded(child: buildTextField("Class X(%)")),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(child: buildTextField("Class XII(%)")),
                  SizedBox(width: 15),
                  Expanded(child: buildTextField("Village Address")),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(child: buildTextField("ID")),
                  SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Course"),
                        SizedBox(height: 5),
                        DropdownButtonFormField(
                          items: ['Bsc', 'Msc', 'PhD']
                              .map((String value) => DropdownMenuItem(
                                    value: value,
                                    child: Text(value),
                                  ))
                              .toList(),
                          onChanged: (_) {},
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Branch"),
                        SizedBox(height: 5),
                        DropdownButtonFormField(
                          items: ['CSE', 'ECE', 'ME']
                              .map((String value) => DropdownMenuItem(
                                    value: value,
                                    child: Text(value),
                                  ))
                              .toList(),
                          onChanged: (_) {},
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                      child: Container()), // Empty space to balance the row
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            "Student Details Updated",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      backgroundColor: Colors.black87,
                    ),
                    child:
                        Text('Submit', style: TextStyle(color: Colors.white)),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/homepage');
                    },
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      backgroundColor: Colors.black87,
                    ),
                    child: Text('Cancel', style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(String labelText) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(labelText),
        SizedBox(height: 5),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.symmetric(
              vertical: 15.0,
              horizontal: 5.0,
            ),
          ),
        ),
      ],
    );
  }
}
