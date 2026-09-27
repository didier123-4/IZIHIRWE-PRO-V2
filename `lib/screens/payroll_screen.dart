import 'package:flutter/material.dart';
class PayrollScreen extends StatelessWidget {
  const PayrollScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('PAYROLL & AVANCE')), body: const Center(child: Text('Formula: Days Worked * Daily Salary - Avance. NO BONUS')));
  }
}
