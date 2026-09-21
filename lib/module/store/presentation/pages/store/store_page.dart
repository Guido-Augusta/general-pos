
import 'package:flutter/material.dart';

class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const StoreUI();
  }
}

class StoreUI extends StatefulWidget {
  const StoreUI({super.key});

  @override
  State<StoreUI> createState() => _StoreUIState();
}

class _StoreUIState extends State<StoreUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Store Page")));
  }
}
