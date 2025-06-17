import 'package:flutter/material.dart';
import 'package:myapp/user.dart';

class UserDetailScreen extends StatelessWidget {
  final User user;

  const UserDetailScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildDetailRow('Name:', user.name),
            _buildDetailRow('Username:', user.username),
            _buildDetailRow('Email:', user.email),
            _buildDetailRow('Company:', user.company.name),
            _buildDetailRow('City:', user.address.city),
            _buildDetailRow('Street:', user.address.street),
            _buildDetailRow('Suite:', user.address.suite),
            _buildDetailRow('Zipcode:', user.address.zipcode),
            _buildDetailRow('Phone:', user.phone),
            _buildDetailRow('Website:', user.website),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 8),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }
}