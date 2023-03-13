import 'package:flutter/material.dart';
import 'package:test_project/models/user_model.dart';
import 'package:test_project/user_repository.dart';

class ApiPage extends StatefulWidget {
  const ApiPage({super.key});

  @override
  State<ApiPage> createState() => _ApiPageState();
}

class _ApiPageState extends State<ApiPage> {
  Future<User> getUser = UserRepository().getUser();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('API Call'),
      ),
      body: FutureBuilder(
        future: getUser,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return Center(
            child: Text('${snapshot.data}'),
          );
        },
      ),
    );
  }
}
