class User {
  String name;
  String city;
  String image;

  User({required this.name, required this.city, required this.image});

  // Convert JSON to user object
  static User fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      city: json['city'],
      image: json['image'],
    );
  }

  // Convert user to JSON object
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'city': city,
      'image': image,
    };
  }
}

