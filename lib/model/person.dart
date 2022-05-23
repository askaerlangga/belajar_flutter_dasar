class Person {
  final String? id;
  final String? email;
  final String? firstName;
  final String? lastName;
  final String? avatar;

  Person({this.id, this.email, this.firstName, this.lastName, this.avatar});

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
      id: json['id'].toString(),
      email: json['email'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      avatar: json['avatar'],
    );
  }
}
