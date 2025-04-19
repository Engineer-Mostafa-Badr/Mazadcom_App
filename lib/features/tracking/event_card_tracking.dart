import 'package:flutter/material.dart';

class EventCardTracking extends StatelessWidget {
  final bool isPast;
  final Widget child;
  const EventCardTracking(
      {super.key, required this.isPast, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
    );
  }
}
