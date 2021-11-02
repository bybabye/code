// ignore_for_file: file_names

class User {
  String? name;
  String? status;
  Picture? picture;

  User({this.name, this.status, this.picture});

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    status = json['status'];
    picture =
        json['picture'] != null ? Picture.fromJson(json['picture']) : null;
  }
}

class Picture {
  String? large;
  String? medium;
  String? thumbnail;

  Picture({this.large, this.medium, this.thumbnail});

  Picture.fromJson(Map<String, dynamic> json) {
    large = json['large'];
    medium = json['large'];
    thumbnail = json['thumbnail'];
  }
}

class Results {
  List<User> results;

  Results(this.results);

  factory Results.fromJson(Map<String, dynamic> json) {
    final users = <User>[];

    if (json['results'] != null) {
      final list = json['results'] as List;

      for (final item in list) {
        final user = User.fromJson(item);
        users.add(user);
      }
    }
    return Results(users);
  }
}
