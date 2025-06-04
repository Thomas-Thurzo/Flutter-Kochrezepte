import 'package:forms/model/todo.dart';

final List<Todo> todoListe = [
  Todo(
    titel: 'Milch kaufen',
    beschreibung: 'Es gibt keine Milch mehr zu Hause.',
    priority: Priority.hoch,
  ),
  Todo(
    titel: 'Das Bett machen',
    beschreibung: 'Damit es zu Hause wieder ordentlich aussieht.',
    priority: Priority.mittel,
  ),
  Todo(
    titel: 'Erlagscheine überweisen',
    beschreibung: 'Damit alles bezahlt ist.',
    priority: Priority.hoch,
  ),
];
