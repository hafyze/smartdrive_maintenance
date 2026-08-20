enum MaintenanceStatus {
  upcoming,
  dueSoon,
  overdue,
}

class MaintenanceItem {
  final String id;
  final String title;
  final String description;
  final MaintenanceStatus status;
  final String due;
  final String icon;

  const MaintenanceItem({
    required this.id,
    required this.title,
    required this.description,
    required this.status,
    required this.due,
    required this.icon,
  });
}