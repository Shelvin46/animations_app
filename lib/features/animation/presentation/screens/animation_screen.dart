import 'package:flutter/material.dart';

class TweenAnimationScreen extends StatefulWidget {
  const TweenAnimationScreen({super.key});

  @override
  State<TweenAnimationScreen> createState() => _TweenAnimationScreenState();
}

class _TweenAnimationScreenState extends State<TweenAnimationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animations'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TweenAnimationBuilder(
                curve: Curves.bounceOut,
                onEnd: () {
                  debugPrint('Tween Animation Ended');
                },
                tween: Tween<double>(begin: 0, end: 100),
                duration: const Duration(seconds: 2),
                builder: (context, size, child) {
                  return Column(
                    children: [
                      Icon(
                        Icons.favorite,
                        size: size,
                        color: Colors.red,
                      ),
                      Text(
                        'Flutter Tween Animation',
                        style: TextStyle(
                          fontSize: size / 2,
                          color: Colors.blue,
                        ),
                      )
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
