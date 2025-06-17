import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:myapp/user.dart'; // Adjust import based on your project structure

class UserService {
  static const String _usersUrl = 'https://jsonplaceholder.typicode.com/users';

  static Future<List<User>> fetchUsers() async {
    final response = await http.get(Uri.parse(_usersUrl));

    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body);
      return body.map((dynamic item) => User.fromJson(item as Map<String, dynamic>)).toList();
    } else {
      throw Exception('Failed to load users');
    }
  }
}