class Movie {
  String title;
  int released;
  List<Director> directed;
  List<Cast?>? cast;

  Movie(
      {required this.title,
      required this.released,
      required this.directed,
      this.cast});

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
        title: json['title'] ?? '',
        released: json['released'] ?? 0,
        directed: (json['directed'] as List<dynamic>?)
                ?.map((director) =>
                    Director.fromJson(director as Map<String, dynamic>))
                .toList() ??
            [],
        cast: null
        // cast: (json['cast'] as List<dynamic>?)
        //     ?.map((actor) => actor != null ? Cast.fromJson(actor as Map<String, dynamic>) : null)
        //     .toList(),
        );
  }
}

class Director {
  String name;
  int born;

  Director({
    required this.name,
    required this.born,
  });

  factory Director.fromJson(Map<String, dynamic> json) {
    return Director(
      name: json['name'] ?? '',
      born: json['born'] ?? '',
    );
  }
}

class Cast {
  String name;
  int born;

  Cast({
    required this.name,
    required this.born,
  });

  factory Cast.fromJson(Map<String, dynamic> json) {
    return Cast(
      name: json['name'] ?? '',
      born: json['born'] ?? '',
    );
  }
}
