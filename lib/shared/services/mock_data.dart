import '../models/maintenance.dart';
import '../models/vehicle.dart';

class MockData {
  static const vehicle = Vehicle(
    id: 'vehicle-001',
    make: 'BMW',
    model: '330i',
    year: 2021,
    mileage: '48,320 km',
    healthScore: 92,
    nextService: '2,300 km',
  );

  static const maintenance = [
    MaintenanceItem(
      id: 'maintenance-001',
      title: 'Engine Oil',
      description: 'Oil and filter replacement',
      status: MaintenanceStatus.dueSoon,
      due: '2,300 km',
      icon: 'oil',
    ),
    MaintenanceItem(
      id: 'maintenance-002',
      title: 'Brake Inspection',
      description: 'Inspect brake pads and discs',
      status: MaintenanceStatus.upcoming,
      due: '5,000 km',
      icon: 'brake',
    ),
    MaintenanceItem(
      id: 'maintenance-003',
      title: 'Tyre Rotation',
      description: 'Rotate and inspect tyres',
      status: MaintenanceStatus.upcoming,
      due: '7,500 km',
      icon: 'tyre',
    ),
  ];
}