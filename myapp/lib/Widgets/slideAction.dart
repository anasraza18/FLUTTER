// ignore: file_names
import 'package:flutter/material.dart';

// ignore: camel_case_types
class slideaction extends StatelessWidget {
  final Widget func;
  const slideaction({super.key, required this.func});

  Route _createSlideRoute() {
    return PageRouteBuilder(
      transitionDuration:
          const Duration(milliseconds: 700), // Slow transition (2 seconds)
      pageBuilder: (context, animation, secondaryAnimation) => func,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        // Slide Animation (Back to Front)
        var slideTween = Tween<Offset>(
          begin: const Offset(1.0, 0.0), // Start from right (off-screen)
          end: Offset.zero, // End at center (normal position)
        ).chain(CurveTween(curve: Curves.easeInOut));

        return SlideTransition(
          position: animation.drive(slideTween),
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // This widget is just a placeholder and won't be rendered
    return Container();
  }

  // Method to navigate using the slide animation
  void navigate(BuildContext context) {
    Navigator.push(context, _createSlideRoute());
  }
}
