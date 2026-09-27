import 'package:flutter/material.dart';
import '../models/employee.dart';
import 'payroll_screen.dart';

class TeamScreen extends StatefulWidget {
  const TeamScreen({super.key});
  @override
  State<TeamScreen> createState() => _TeamScreenState();
}

class _TeamScreenState extends State<TeamScreen> {
  final nameCtrl = TextEditingController();
  final salaryCtrl = TextEditingController();

  void addEmployee() {
    if(nameCtrl.text.isEmpty) return;
    setState(() {
      employees.add(Employee(name: nameCtrl.text, role: 'Worker', dailySalary: double.tryParse(salaryCtrl.text)?? 3000));
      nameCtrl.clear();
      salaryCtrl.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TEAM - ${employees.length} No Limit')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(children: [
              Expanded(child: TextField(controller: nameCtrl, decoration: const InputDecoration(labelText: 'Name'))),
              const SizedBox(width: 8),
              Expanded(child: TextField(controller: salaryCtrl, decoration: const InputDecoration(labelText: 'Daily Salary'), keyboardType: TextInputType.number)),
              IconButton(onPressed: addEmployee, icon: const Icon(Icons.add, color: Colors.green))
            ]),
          ),
          Expanded(child: ListView.builder(
            itemCount: employees.length,
            itemBuilder: (context, i) => ListTile(title: Text(employees[i].name), subtitle: Text('${employees[i].dailySalary} RWF/day')),
          ))
        ],
      ),
    );
  }
}
