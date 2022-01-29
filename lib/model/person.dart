class Person {
  final int? id;
  final String? title;

  const Person({this.id, this.title});

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(id: json['id'], title: json['title']);
  }
}
