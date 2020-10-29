import 'package:api_call/Model/EmployeeModel.dart';
import 'package:api_call/Screens/getAllEmployees.dart';
import 'package:api_call/Screens/registerEmployee.dart';
import 'package:flutter/material.dart';

class employeeDrawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return employeeDrawerState();
  }
}

class employeeDrawerState extends State<employeeDrawer> {
  final minimumPadding = 5.0;

  List<EmployeeModel> employeeDetails = List<EmployeeModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Employee Management')),
        body: Center(child: Text('Welcome to PXP Channel!')),
        drawer: Drawer(
          child: ListView(
            padding:
                EdgeInsets.only(top: minimumPadding, bottom: minimumPadding),
            children: <Widget>[
              DrawerHeader(
                child: Text('Employee Management'),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                  title: Text('Register Employee'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => registerEmployeee()));
                  }),
              ListTile(
                title: Text('Get All Employees'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => getemployees()));
                },
              ),
            ],
          ),
        ));
  }
}
