class HwModel {
  final String name;
  final String lasname;
  final String city;
  final String id;
  final String image;
  const HwModel({
    required this.id,

    required this.image,
    required this.name,
    required this.lasname,
    required this.city,
  });
  factory HwModel.fromJson(Map<String, dynamic> json) {
    return HwModel(
      id: json['id'],

      image: json['name'],
      name: json['lastname'],
      lasname: json['city'],
      city: json['image'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'name': name, 'lastname': lasname};
  }
}
