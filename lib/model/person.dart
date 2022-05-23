class Person {
  final String? id;
  final String? name;
  final String? job;
  final String? createdAt;

  Person({this.id, this.name, this.job, this.createdAt});

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
      id: json['id'],
      name: json['name'],
      job: json['job'],
      createdAt: json['createdAt'],
    );
  }
}
