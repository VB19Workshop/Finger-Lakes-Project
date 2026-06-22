final List<Map<String, String>> newEvents = [
  {"day": "Monday", "event": "New Blend Launch"},
  {"day": "Tuesday", "event": "Live Music Night"},
];

final List<Map<String, String>> standardEvents = [
  {"day": "Monday", "event": "Half Off Drip Coffee"},
  {"day": "Tuesday", "event": "2-for-1 Espresso"},
];


class Event{
  final String date;
  final String title;
  final String description;

  const Event({
    required this.date,
    required this.title,
    required this.description,
  });
}