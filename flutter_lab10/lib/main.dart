import 'package:flutter/material.dart';

void main() {
  runApp(lab10());
}

class lab10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

// --------- (Task 1) ----------
class HomeScreen extends StatelessWidget {
  final List<Todo> todos = List.generate(
    5,
    (i) => Todo('Todo $i', 'This is detail of Todo $i'),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen')),
      body: Column(
        children: [
          // ----------  (Task 2) ----------
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ImageScreen()),
              );
            },
            child: Hero(
              tag: "imageHero",
              child: Image.network("https://picsum.photos/200"),
            ),
          ),

          SizedBox(height: 20),

          Text("Todo List (Click for Detail)"),

          // ----------  (Task 3) ----------
          Expanded(
            child: ListView.builder(
              itemCount: todos.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(todos[index].title),

                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(todo: todos[index]),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// -------------- (Task 2 + Task 1 ) -----------
class ImageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hero Screen')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Hero(
            tag: "imageHero",
            child: Image.network("https://picsum.photos/400"),
          ),

          SizedBox(height: 20),

          ElevatedButton(
            child: Text("Go Back"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

// ------------- (Task 3) --------------
class Todo {
  final String title;
  final String description;

  Todo(this.title, this.description);
}

// -----------  (Task 3 + Task 1 Pop) -----------
class DetailScreen extends StatelessWidget {
  final Todo todo;

  DetailScreen({required this.todo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(todo.title)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(todo.description),

          SizedBox(height: 20),

          ElevatedButton(
            child: Text("Back"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
