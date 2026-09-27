import 'package:flutter/material.dart';
import 'screens/dashboard_screen.dart';
import 'screens/team_screen.dart';
import 'screens/attendance_screen.dart';
import 'screens/time_screen.dart';
import 'screens/production_screen.dart';
import 'screens/payroll_screen.dart';
import 'screens/settings_screen.dart';

void main() {
  runApp(const IzihirweApp());
}

class IzihirweApp extends StatelessWidget {
  const IzihirweApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IZIHIRWE-PRO-V2',
      theme: ThemeData(primarySwatch: Colors.green),
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
      {'title': 'TEAM (No Limit)', 'icon': Icons.people, 'screen': const TeamScreen()},
      {'title': 'ATTENDANCE', 'icon': Icons.check_circle, 'screen': const AttendanceScreen()},
      {'title': 'TIME', 'icon': Icons.access_time, 'screen': const TimeScreen()},
      {'title': 'PRODUCTION 5h Alert', 'icon': Icons.factory, 'screen': const ProductionScreen()},
      {'title': 'PAYROLL', 'icon': Icons.payments, 'screen': const PayrollScreen()},
      {'title': 'SETTINGS', 'icon': Icons.settings, 'screen': const SettingsScreen()},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('IZIHIRWE-PRO-V2'), backgroundColor: Colors.green),
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1.2),
        itemCount: dashboards.length,
        itemBuilder: (context, i) {
          return Card(
            child: InkWell(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => dashboards[i]['screen'] as Widget)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(dashboards[i]['icon'] as IconData, size: 40, color: Colors.green),
                  const SizedBox(height: 8),
                  Text(dashboards[i]['title'] as String, textAlign: TextAlign.center, style: const TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
