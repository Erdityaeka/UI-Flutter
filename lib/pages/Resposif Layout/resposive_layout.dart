import 'package:flutter/material.dart';

class ResponsivePage extends StatelessWidget {
  const ResponsivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constrains) {
          if (constrains.maxWidth < 600) {
            return ListView(
              children: _generateContainers(),
            );
          } else if (constrains.maxWidth < 900) {
            return GridView.count(
              crossAxisCount: 2,
              children: _generateContainers(),
            );
          } else {
            return GridView.count(
              crossAxisCount: 6,
              children: _generateContainers(),
            );
          }
        },
      ),
    );
  }

  List<Widget> _generateContainers() {
    return List.generate(
      20,
      (index) {
        return Container(
          margin: EdgeInsets.all(8),
          color: Colors.blueGrey,
          height: 200,
        );
      },
    );
  }
}
