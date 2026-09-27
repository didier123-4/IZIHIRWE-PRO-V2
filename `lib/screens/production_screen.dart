import 'package:flutter/material.dart';
class ProductionScreen extends StatelessWidget {
  const ProductionScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('PRODUCTION - 5h Alert')), body: const Center(child: Text('Production Orders - WhatsApp to Manager if >5h pending')));
  }
}
