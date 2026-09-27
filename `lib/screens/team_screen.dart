import 'package:flutter/material.dart';

class TeamScreen extends StatefulWidget {
  const TeamScreen({super.key});
  @override State<TeamScreen> createState() => _TeamScreenState();
}
class _TeamScreenState extends State<TeamScreen> {
  List<String> employees = []; // No limit - can add 30, 50, 100+

  void addEmployee() {
    setState(() {
      employees.add('Employee ${employees.length + 1}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TEAM - ${employees.length} Staff (No Limit)')),
      body: ListView.builder(
        itemCount: employees.length,
        itemBuilder: (c,i)=>ListTile(title: Text(employees[i]), subtitle: Text('Day/Night Shift')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addEmployee,
        child: const Icon(Icons.person_add),
      ),
    );
  }
}
