import 'package:api_call/Model/EmployeeModel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

import 'getAllEmployees.dart';

class deleteEmployee extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return deleteEmployeeState();
  }
}
Future<EmployeeModel> deleteemployees(String firstName, String lastName) async {
//  var Url = "http://192.168.0.152:8080/deleteemployee";
  var Url = "http://localhost:8080/deleteemployee";
  print('*********************************************************************Within deleteemployees method**************************');
  var response = await http.delete(
    Url,
    headers: <String, String>{
      "Content-Type": "application/json;charset=UTF-8',"
    },
  );
  return EmployeeModel.fromJson(jsonDecode(response.body));
}

class deleteEmployeeState extends State<deleteEmployee> {
  Future<EmployeeModel> employee;

  @override
  Widget build(BuildContext context) {
    return getemployees();

  }
}
