import 'package:intl/intl.dart'; // Import this for date and time formatting

class Todo {
  String title;
  String description;
  DateTime date; // Use DateTime to handle both date and time
  bool isDone;

  Todo({
    required this.title,
    required this.description,
    required this.date,
    this.isDone = false,
  });

  // Convert a Todo object to a Map for saving to a database or sharing over a network
  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'date': date.toIso8601String(), // Convert DateTime to ISO 8601 string
      'isDone': isDone,
    };
  }

  // Convert a Map to a Todo object
  factory Todo.fromMap(Map<String, dynamic> map) {
    return Todo(
      title: map['title'],
      description: map['description'],
      date: DateTime.parse(map['date']), // Convert ISO 8601 string to DateTime
      isDone: map['isDone'],
    );
  }

  // Optional: Provide a string representation of the Todo object
  @override
  String toString() {
    return 'Todo{title: $title, description: $description, date: ${DateFormat('yyyy-MM-dd – kk:mm').format(date)}, isDone: $isDone}';
  }
}
