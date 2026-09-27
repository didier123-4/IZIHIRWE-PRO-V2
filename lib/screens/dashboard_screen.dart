import 'package:flutter/material.dart';
import 'team_screen.dart';
import 'attendance_screen.dart';
import 'time_screen.dart';
import 'production_screen.dart';
import 'payroll_screen.dart';
import 'settings_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final items = [
      {'t':'TEAM No Limit','i':Icons.people,'s':const TeamScreen()},
      {'t':'ATTENDANCE','i':Icons.check_circle,'s':const AttendanceScreen()},
      {'t':'TIME','i':Icons.timer,'s':const TimeScreen()},
      {'t':'PRODUCTION 5h','i':Icons.factory,'s':const ProductionScreen()},
      {'t':'PAYROLL','i':Icons.payments,'s':const PayrollScreen()},
      {'t':'SETTINGS','i':Icons.settings,'s':const SettingsScreen()},
    ];
    return Scaffold(
      appBar: AppBar(title: const Text('IZIHIRWE-PRO-V2'), backgroundColor: Colors.green),
      body: GridView.builder(padding:const EdgeInsets.all(12), gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2), itemCount:items.length, itemBuilder:(c,i)=>Card(child:InkWell(onTap:()=>Navigator.push(c, MaterialPageRoute(builder:(_)=>items[i]['s'] as Widget)), child:Column(mainAxisAlignment:MainAxisAlignment.center, children:[Icon(items[i]['i'] as IconData,size:40,color:Colors.green), Text(items[i]['t'] as String,style:const TextStyle(fontWeight:FontWeight.bold))])))),
    );
  }
}
