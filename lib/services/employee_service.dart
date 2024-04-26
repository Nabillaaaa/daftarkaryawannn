import 'dart:js_interop';

import 'package:firebase_database/firebase_database.dart';

class EmployeeService {
  final DatabaseReference_employeeRef= FirebaseDatabase.instance.refences().chile('employees');

  Future<void>addEmployee(String name, String position) async {
    try {
      await_employeeRef.push().set({
        'name': name,
        'position': position,
      });
    } catch(error) {
      print('Error adding employee:$error');
      throw error;
    }
  }

  Stream<Even> getEmployeeStream() {
    return_employeeRef.onValue;
  }
}