import 'package:go_router/go_router.dart';

import '../../features/dashboard/screens/dashboard_screen.dart';
import '../../features/maintenance/screens/maintenance_screen.dart';
import '../../features/settings/screens/settings_screen.dart';
import '../../features/vehicle/screens/vehicle_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',

  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const DashboardScreen(),
    ),
    GoRoute(
      path: '/maintenance',
      builder: (context, state) => const MaintenanceScreen(),
    ),

    GoRoute(
      path: '/vehicle',
      builder: (context, state) => const VehicleScreen(),
    ),

    GoRoute(
      path: '/settings',
      builder: (context, state) => const SettingsScreen(),
    ),
  ],
);