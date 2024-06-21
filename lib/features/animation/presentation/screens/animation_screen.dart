import 'package:flutter/material.dart';

class TweenAnimationScreen extends StatefulWidget {
  const TweenAnimationScreen({super.key});

  @override
  State<TweenAnimationScreen> createState() => _TweenAnimationScreenState();
}

class _TweenAnimationScreenState extends State<TweenAnimationScreen> {
  @override
  void initState() {
    debugPrint('Tween Animation Init State');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    debugPrint('Tween Animation Did Change Dependencies');
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant TweenAnimationScreen oldWidget) {
    debugPrint('Tween Animation Did Update Widget');

    super.didUpdateWidget(oldWidget);
  }

  String text = 'Flutter Tween Animation';
  void textUpdate() {
    setState(() {
      text = 'Flutter Tween Animation Updated';
    });
  }

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
                curve: Curves.linearToEaseOut,
                onEnd: () {
                  debugPrint('Tween Animation Ended');
                },
                tween: Tween<double>(begin: 0, end: 100),
                duration: const Duration(seconds: 2),
                builder: (context, size, child) {
                  return Column(
                    children: [
                      Icon(
                        Icons.star,
                        size: size,
                        color: Colors.red,
                      ),
                    ],
                  );
                },
              ),
              GestureDetector(
                onTap: () {
                  textUpdate();
                },
                child: Text(
                  text,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void deactivate() {
    debugPrint('Tween Animation Deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
