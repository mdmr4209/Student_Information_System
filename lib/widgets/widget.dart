import 'package:flutter/material.dart';

class Drawer1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.deepPurple[100],
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.deepPurple[200],
            ),
            child: Container(
              height: 50,
              child: Center(
                child: Text(
                  'M E N U',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          ),
          //home
          ListTile(
            leading: Icon(Icons.home),
            title: Text("HOME"),
            onTap:() {
              Navigator.pushNamed(context, '/homepage');
            },
          ),
          //setting
          ListTile(
            leading: Icon(Icons.add),
            title: Text("ADD STUDENT"),
            onTap:() {
              Navigator.pushNamed(context, '/addstdpage');
            },
          ),

          ListTile(
            leading: Icon(Icons.document_scanner),
            title: Text("STUDENT DETAILS"),
            onTap:() {
              Navigator.pushNamed(context, '/stddepage');
            },
          ),
          ListTile(
            leading: Icon(Icons.man),
            title: Text("STUDENT ATTENDANCE"),
            onTap:() {
              Navigator.pushNamed(context, '/stdattpage');
            },
          ),
          ListTile(
            leading: Icon(Icons.document_scanner_outlined),
            title: Text("STUDENT ATTENDANCE DETAILS"),
            onTap:() {
              Navigator.pushNamed(context, '/stdattdepage');
            },
          ),
          ListTile(
            leading: Icon(Icons.manage_history),
            title: Text("UPDATE STUDENT"),
            onTap:() {
              Navigator.pushNamed(context, '/updatestdpage');
            },
          ),
          ListTile(
            leading: Icon(Icons.money_sharp),
            title: Text("STUDENT FEE STRUCTURE"),
            onTap:() {
              Navigator.pushNamed(context, '/stdfestr');
            },
          ),
          ListTile(
            leading: Icon(Icons.format_align_center),
            title: Text("STUDENT FEE FORM"),
            onTap:() {
              Navigator.pushNamed(context, '/stdfefopage');
            },
          ),
          ListTile(
            leading: Icon(Icons.calculate),
            title: Text("CALCULATOR"),
            onTap:() {
              Navigator.pushNamed(context, '/calcopage');
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("LOG OUT"),
            onTap:() {
              Navigator.pushNamed(context, '/loginpage');
            },
          ),
        ],
      ),
    );
  }
  
}