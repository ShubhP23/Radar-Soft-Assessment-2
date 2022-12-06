class CalcBrain {
  CalcBrain({required this.age});

  final int age;
  int? hundredthYear;

  String calculateAge() {
    hundredthYear = 2022 + (100 - age);
    return hundredthYear.toString();
  }
}
