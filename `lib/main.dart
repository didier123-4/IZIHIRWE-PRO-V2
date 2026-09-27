import 'package:flutter/material.dart';
void main() => runApp(const IzihirweApp());

class IzihirweApp extends StatelessWidget {
  const IzihirweApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IZIHIRWE-PRO-V2',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: const LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: ElevatedButton(onPressed: ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>const DashboardScreen())), child: const Text('INJIRA - IZIHIRWE PRO V2'))));
  }
}
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final dashboards = ['TEAM (No Limit)', 'ATTENDANCE', 'TIME', 'PRODUCTION (5h Alert)', 'PAYROLL & AVANCE (No Bonus)', 'SETTINGS'];
    return Scaffold(appBar: AppBar(title: const Text('IZIHIRWE - 6 + LOGIN = 7')), body: ListView(children: dashboards.map((d)=>ListTile(title: Text(d))).toList()));
  }
}
