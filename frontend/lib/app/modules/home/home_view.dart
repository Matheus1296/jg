import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_controller.dart';

// ignore: use_key_in_widget_constructors
class HomeView extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/imgs/logo.png',
            height: 30,
          ),
        ),
        title: const Text(
          "MoviesJG",
          style: TextStyle(fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Obx(
        () => controller.isLoading.value
            ? const Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: controller.movies.length,
                itemBuilder: (context, index) {
                  final movie = controller.movies[index];
                  return Card(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: ListTile(
                      title: Text(
                        movie.title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 4),
                          Text('Lançado em: ${movie.released}'),
                          Text('Dirigido por : ${movie.directed[0].name}'),
                        ],
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
