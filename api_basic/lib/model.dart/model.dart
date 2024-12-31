class Employee {
  int? id;
  String? firstName;
  String? lastName;
  String? email;
  String? birthdate;

  Employee({
    this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.birthdate,
  });

  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(
        id: json['id'],
        firstName: json['firstname'],
        lastName: json['lastname'],
        email: json['email'],
        birthdate: json['birthDate']);
  }
}
