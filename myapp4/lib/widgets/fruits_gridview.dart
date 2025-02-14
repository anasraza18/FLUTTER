import 'package:flutter/material.dart';

class FruitsGridview extends StatelessWidget {
  const FruitsGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: GridView.builder(
        itemCount: 4,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          mainAxisExtent: 100,
          childAspectRatio: 1,
        ),
        itemBuilder: (context, index) {
          return Card(
            color: Colors.amber,
          );
        },
      ),
    );
  }
}
