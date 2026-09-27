class Employee {
  String name;
  String role;
  double dailySalary;
  double avance;
  int daysWorked;

  Employee({
    required this.name,
    required this.role,
    required this.dailySalary,
    this.avance = 0,
    this.daysWorked = 0,
  });

  double get netSalary => (daysWorked * dailySalary) - avance;
}
