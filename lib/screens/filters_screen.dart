import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/widgets/main_drawer.dart';

class FiltersScreen extends StatelessWidget {
  static const routeName = "/filters-screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Your filters")),
      drawer: MainDrawer(),
      body: Center(
        child: Text("Filters!"),
      ),
    );
  }
}
