import 'package:flutter/material.dart';

import "../../../shared/models/vehicle.dart";

class VehicleSummaryCard extends StatelessWidget{
  final Vehicle vehicle;

  const VehicleSummaryCard({
    super.key,
    required this.vehicle,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 52,
                  height: 52,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Icon(
                    Icons.directions_car_rounded,
                    color: theme.colorScheme.primary,
                    size: 28,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        vehicle.displayName,
                        style: theme.textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        vehicle.mileage,
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert),
                ),
              ],
            ),

            const SizedBox(height: 28),

            Row(
              children: [
                Expanded(
                  child: _VehicleStat(
                    label: 'Health',
                    value: '${vehicle.healthScore}%',
                    icon: Icons.favorite_rounded,
                  ),
                ),
                Expanded(
                  child: _VehicleStat(
                    label: 'Next service',
                    value: vehicle.nextService,
                    icon: Icons.build_rounded,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _VehicleStat extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;
const _VehicleStat({
    required this.label,
    required this.value,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      children: [
        Icon(
          icon,
          size: 20,
          color: theme.colorScheme.primary,
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: theme.textTheme.bodySmall,
            ),
            const SizedBox(height: 2),
            Text(
              value,
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}