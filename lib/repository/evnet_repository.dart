import 'package:flutter_starbug_clone_ui/model/event.dart';

class EventRepository {
  List<Event> getEventList() {
    return List<Event>.generate(5, (index) => Event(urlPath: 'assets/images/cards.png'));
  }
}
