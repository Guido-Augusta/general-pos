import 'package:flutter/material.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const OrdersUI();
  }
}

class OrdersUI extends StatefulWidget {
  const OrdersUI({super.key});

  @override
  State<OrdersUI> createState() => _OrdersUIState();
}

class _OrdersUIState extends State<OrdersUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Orders Page")));
  }
}
