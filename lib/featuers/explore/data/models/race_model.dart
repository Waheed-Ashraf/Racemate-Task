class RaceModel {
  String name;
  String? organizer;
  String date;
  String country;
  String city;
  String image;
  String type;
  String distances;

  RaceModel({
    required this.name,
    this.organizer,
    required this.date,
    required this.country,
    required this.city,
    required this.image,
    required this.type,
    required this.distances,
  });

  factory RaceModel.fromJson(Map<String, dynamic> json) {
    return RaceModel(
      name: json['name'],
      organizer: json['organizer'],
      date: json['date'],
      country: json['country'],
      city: json['city'],
      image: json['image'],
      type: json['type'],
      distances: json['distances'],
    );
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['name'] = this.name;
  //   if (this.organizer != null) data['organizer'] = this.organizer;
  //   data['date'] = this.date;
  //   data['country'] = this.country;
  //   data['city'] = this.city;
  //   data['image'] = this.image;
  //   data['type'] = this.type;
  //   data['distances'] = this.distances;
  //   return data;
  // }
}
