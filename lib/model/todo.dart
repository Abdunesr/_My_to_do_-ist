class Todo {
  String? id;
  String  todoText;
  bool isDone;
  Todo({required this.id, required this.todoText, this.isDone = false});

  static List<Todo> todoLists(){
    return [
      Todo(id:'01', todoText: 'Seeing Flutter Video',isDone: true),
       Todo(id:'02', todoText: 'Doing Workout',isDone: true),
        Todo(id:'03', todoText: 'reading  Flutter book'),
         Todo(id:'04', todoText: 'praying Sallah'),
          Todo(id:'05', todoText: 'watching funnny viedio'),
           Todo(id:'06', todoText: 'taking care of my Hygine'),
    ];
  }
}
