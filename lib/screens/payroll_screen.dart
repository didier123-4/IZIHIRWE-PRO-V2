import 'package:flutter/material.dart';
import '../models/employee.dart';

List<Employee> employees = [];

class PayrollScreen extends StatefulWidget {
  const PayrollScreen({super.key});
  @override
  State<PayrollScreen> createState() => _PayrollScreenState();
}

class _PayrollScreenState extends State<PayrollScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('PAYROLL - Days*Salary-Avance')),
      body: ListView.builder(
        itemCount: employees.length,
        itemBuilder: (context, i) {
          final e = employees[i];
          return ListTile(
            title: Text(e.name),
            subtitle: Text('${e.daysWorked} days x ${e.dailySalary} - ${e.avance} = ${e.netSalary} RWF'),
            trailing: Text('${e.netSalary} RWF', style: const TextStyle(fontWeight: FontWeight.bold)),
          );
        },
      ),
    );
  }
}
