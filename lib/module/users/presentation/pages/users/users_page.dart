
import 'package:flutter/material.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const UsersUI();
  }
}

class UsersUI extends StatefulWidget {
  const UsersUI({super.key});

  @override
  State<UsersUI> createState() => _UsersUIState();
}

class _UsersUIState extends State<UsersUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Users Page")));
  }
}
