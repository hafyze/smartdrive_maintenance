class Vehicle{
  final String id;
  final String make;
  final String model;
  final int year;
  final String mileage;
  final int healthScore;
  final String nextService;

  const Vehicle({
    required this.id,
    required this.make,
    required this.model,
    required this.year,
    required this.mileage,
    required this.healthScore,
    required this.nextService,
  });

  String get displayName => '$year $make $model';
}