import 'package:flutter/material.dart';
import 'package:flutter_starbug_clone_ui/model/event.dart';

class EventCard extends StatelessWidget {
  final Event event;
  const EventCard({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Container(
          decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.3), blurRadius: 6, spreadRadius: 0.4, offset: const Offset(0, 5))]), child: Image.asset(event.urlPath)),
    );
  }
}
