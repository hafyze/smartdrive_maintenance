import 'package:flutter/material.dart';

import '../../../shared/services/mock_data.dart';
import '../widgets/maintenance_card.dart';
import '../widgets/vehicle_summary_card.dart';


class DashboardScreen extends StatelessWidget{
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SmartDrive',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none_rounded),
          ),
          const SizedBox(width: 8),
        ],
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 1100,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Good morning',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),

                  const SizedBox(height: 6),

                  Text(
                    'Here is your vehicle health overview.',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Theme.of(context)
                              .colorScheme
                              .onSurfaceVariant,
                        ),
                  ),

                  const SizedBox(height: 24),

                  VehicleSummaryCard(
                    vehicle: MockData.vehicle,
                  ),

                  const SizedBox(height: 32),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Upcoming maintenance',
                        style:
                            Theme.of(context).textTheme.titleLarge?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text('View all'),
                      ),
                    ],
                  ),

                  const SizedBox(height: 12),

                  ...MockData.maintenance.map(
                    (item) => Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: MaintenanceCard(
                        item: item,
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}