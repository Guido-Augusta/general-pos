
import 'package:flutter/material.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const TransactionUI();
  }
}

class TransactionUI extends StatefulWidget {
  const TransactionUI({super.key});

  @override
  State<TransactionUI> createState() => _TransactionUIState();
}

class _TransactionUIState extends State<TransactionUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Transaction Page")));
  }
}
