import 'package:flutter/material.dart';
import 'screens/team_screen.dart';
import 'screens/attendance_screen.dart';
import 'screens/time_screen.dart';
import 'screens/production_screen.dart';
import 'screens/payroll_screen.dart';
import 'screens/settings_screen.dart';

void main() => runApp(const IzihirweApp());

class IzihirweApp extends StatelessWidget {
  const IzihirweApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IZIHIRWE-PRO-V2',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: const DashboardScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final dashboards = [
      {'title':'TEAM (No Limit)','icon':Icons.group,'screen':const TeamScreen()},
      {'title':'ATTENDANCE','icon':Icons.how_to_reg,'screen':const AttendanceScreen()},
      {'title':'TIME TRACKING','icon':Icons.timer,'screen':const TimeScreen()},
      {'title':'PRODUCTION (5h Alert)','icon':Icons.factory,'screen':const ProductionScreen()},
      {'title':'PAYROLL & AVANCE','icon':Icons.payments,'screen':const PayrollScreen()},
      {'title':'SETTINGS','icon':Icons.settings,'screen':const SettingsScreen()},
    ];
    return Scaffold(
      appBar: AppBar(title: const Text('IZIHIRWE-PRO-V2 - 7 Dashboards')),
      body: ListView.builder(
        itemCount: dashboards.length,
        itemBuilder: (c,i){
          return ListTile(
            leading: Icon(dashboards[i]['icon'] as IconData),
            title: Text(dashboards[i]['title'] as String),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>dashboards[i]['screen'] as Widget)),
          );
        },
      ),
    );
  }
}
