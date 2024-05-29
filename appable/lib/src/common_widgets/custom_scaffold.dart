import 'package:appable/src/constraints/image_string.dart';
import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({super.key, this.child});
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),        
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Image.asset(backgroundImage1,
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity),
          SafeArea(child: child!)
        ],
      ),
    );
  }
}
