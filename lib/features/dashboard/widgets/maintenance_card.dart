import 'package:flutter/material.dart';

import '../../../shared/models/maintenance.dart';

class MaintenanceCard extends StatelessWidget {
  final MaintenanceItem item;

  const MaintenanceCard({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Row(
          children: [
            Container(
              width: 46,
              height: 46,
              decoration: BoxDecoration(
                color: theme.colorScheme.secondaryContainer,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                _getIcon(item.icon),
                color: theme.colorScheme.secondary,
              ),
            ),

            const SizedBox(width: 14),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    item.description,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(width: 12),

            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                _StatusBadge(status: item.status),
                const SizedBox(height: 6),
                Text(
                  item.due,
                  style: theme.textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  IconData _getIcon(String icon) {
    switch (icon) {
      case 'oil':
        return Icons.water_drop_rounded;
      case 'brake':
        return Icons.album_rounded;
      case 'tyre':
        return Icons.tire_repair_rounded;
      default:
        return Icons.build_rounded;
    }
  }
}

class _StatusBadge extends StatelessWidget {
  final MaintenanceStatus status;

  const _StatusBadge({
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final (label, color) = switch (status) {
      MaintenanceStatus.upcoming => (
          'Upcoming',
          theme.colorScheme.primary,
        ),
      MaintenanceStatus.dueSoon => (
          'Due soon',
          theme.colorScheme.tertiary,
        ),
      MaintenanceStatus.overdue => (
          'Overdue',
          theme.colorScheme.error,
        ),
    };

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 9,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: theme.textTheme.labelSmall?.copyWith(
          color: color,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}