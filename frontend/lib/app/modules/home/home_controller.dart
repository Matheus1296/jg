import 'package:get/get.dart';
import 'package:graphql/client.dart';
import '../../../models/movie.dart';
import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;

class HomeController extends GetxController {
  var movies = <Movie>[].obs;
  var isLoading = false.obs;

  static String get apiUrl {
    if (kIsWeb) {
      return 'http://localhost:4000/';
    } else if (Platform.isAndroid) {
      return 'http://10.0.2.2:4000/';
    } else if (Platform.isIOS) {
      return 'http://localhost:4000/';
    } else {
      return 'http://192.168.1.100:4000/';
    }
  }

  final GraphQLClient client = GraphQLClient(
    link: HttpLink(
      apiUrl,
      defaultHeaders: {
        'Content-Type': 'application/json',
      },
    ),
    cache: GraphQLCache(),
  );

  @override
  void onInit() {
    super.onInit();
    fetchMovies();
  }

  Future<void> fetchMovies() async {
    try {
      isLoading.value = true;

      final QueryOptions options = QueryOptions(
        document: gql('''
          query {
            movies {
              title
              released
              directed {
                name
                born
              }
            }
          }
        '''),
      );

      final QueryResult result = await client.query(options);

      if (result.hasException) {
        print(result.exception.toString());
        return;
      }

      if (result.data != null) {
        final List<dynamic> moviesData = result.data!['movies'];
        movies.value =
            moviesData.map((movieData) => Movie.fromJson(movieData)).toList();
      }
    } catch (e) {
      print(e.toString());
    } finally {
      isLoading.value = false;
    }
  }
}
