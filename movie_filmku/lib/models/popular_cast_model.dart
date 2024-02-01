class CastModel {
  bool adult;
  int gender;
  int id;
  String knownForDepartement;
  String name;
  String originalName;
  double popularity;
  String profilePath;

  CastModel({
    required this.adult,
    required this.gender,
    required this.id,
    required this.knownForDepartement,
    required this.name,
    required this.originalName,
    required this.popularity,
    required this.profilePath,
  });

  factory CastModel.fromJson(Map<String, dynamic> json) {
    return CastModel(
      adult: json['adult'],
      gender: json['gender'],
      id: json['id'],
      knownForDepartement: json['known_for_department'],
      name: json['name'],
      originalName: json['original_name'],
      popularity: json['popularity'].toDouble(), // Tambahkan .toDouble()
      profilePath: json['profile_path'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'adult': adult,
      'gender': gender,
      'id': id,
      'known_for_department': knownForDepartement,
      'name': name,
      'original_name': originalName,
      'popularity': popularity,
      'profilePath': profilePath,
    };
  }
}
