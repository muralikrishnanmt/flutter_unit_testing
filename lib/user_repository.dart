import 'package:http/http.dart' as http;
import 'package:test_project/models/user_model.dart';

class UserRepository {
  Future<User> getUser() async {
    final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/users/1'),
    );
    if (response.statusCode == 200) {
      return User.fromJson(response.body);
    }
    throw Exception('Some Error Occurred');
  }
}
