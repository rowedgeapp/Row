import 'package:flutter/material.dart';
import 'new_ticket.dart';
import 'active_charging.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row Edge'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: [
            _tile(
              context,
              'New Ticket',
              Icons.flash_on,
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const NewTicketScreen(),
                  ),
                );
              },
            ),
            _tile(
              context,
              'Active Charging',
              Icons.phone_android,
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const ActiveChargingScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _tile(
      BuildContext context, String title, IconData icon, VoidCallback onTap) {
    return Card(
      elevation: 3,
      child: InkWell(
        onTap: onTap,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 48),
              const SizedBox(height: 10),
              Text(
                title,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
