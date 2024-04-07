import 'package:flutter/material.dart';
import 'package:flutter_starbug_clone_ui/model/event.dart';
import 'package:flutter_starbug_clone_ui/presentation/component/wrapper/event_card.dart';
import 'package:flutter_starbug_clone_ui/repository/evnet_repository.dart';

class EventComponent extends StatefulWidget {
  final EventRepository repository;
  const EventComponent({super.key, required this.repository});

  @override
  State<EventComponent> createState() => _EventListState();
}

class _EventListState extends State<EventComponent> {
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: _getEventList().length, (BuildContext context, int index) {
      return EventCard(event: _getEventList()[index]);
    }));
  }

  List<Event> _getEventList() {
    return widget.repository.getEventList();
  }
}
