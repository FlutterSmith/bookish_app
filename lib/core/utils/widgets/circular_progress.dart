import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CustomCirclerProgress extends StatefulWidget {
  const CustomCirclerProgress({super.key});

  @override
  State<CustomCirclerProgress> createState() => _CustomCirclerProgressState();
}

class _CustomCirclerProgressState extends State<CustomCirclerProgress> {
  final spin = const SpinKitChasingDots(
    color: Colors.green,
  );

  @override
  Widget build(BuildContext context) {
    return Center(child: spin);
  }
}
