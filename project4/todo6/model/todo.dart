class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'Breakfast', isDone: true ),
      ToDo(id: '02', todoText: 'Go outside', isDone: true ),
      ToDo(id: '03', todoText: 'Spend Family time', ),
      ToDo(id: '04', todoText: 'Team Meeting', ),
      ToDo(id: '05', todoText: 'Study for 5 hours', ),
      ToDo(id: '06', todoText: 'Late night coding', ),
    ];
  }
}