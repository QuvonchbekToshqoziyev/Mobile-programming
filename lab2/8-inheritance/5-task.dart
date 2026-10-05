abstract class Employee {
  final String name;
  Employee(this.name);

  // Abstract: every subclass must implement.
  double calculatePay();

  // Concrete: shared by all subclasses.
  void printPayslip() => print('$name earned \$${calculatePay().toStringAsFixed(2)}');
}

class Salaried extends Employee {
  final double annualSalary;
  Salaried(super.name, this.annualSalary);

  @override
  double calculatePay() => annualSalary / 12;
}

class Hourly extends Employee {
  final double rate;
  final int hours;
  Hourly(super.name, this.rate, this.hours);

  @override
  double calculatePay() => rate * hours;
}

void main() {
  Salaried('Alice', 60000).printPayslip();
  Hourly('Bob', 25, 160).printPayslip();
}