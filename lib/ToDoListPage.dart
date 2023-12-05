import 'package:flutter/material.dart';
import 'ToDo.dart';

class ToDoListPage extends StatefulWidget {
  const ToDoListPage({super.key});

  @override
  State<ToDoListPage> createState() => _ToDoListPageState();
}

class _ToDoListPageState extends State<ToDoListPage> {
  final _items = <ToDo>[]; //To Do 저장할 list
  var _toDoController = TextEditingController();

  void dispose() {
    //화면 빠져나갔을 때 컨트롤러 동작하지 않게
    _toDoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('남은 할 일'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _toDoController,
                  ),
                ),
                ElevatedButton(
                    onPressed: ()=> _addTodo(ToDo(_toDoController.text)),
                    child: Text('추가'),
                ),
              ],
            ),
            Expanded(
                child: ListView(
                  //이해필요
                  children: _items.map((todo) => _buildItemWidget(todo)).toList(),
                ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildItemWidget(ToDo todo) {
    return ListTile(
      onTap: (){},
      title: Text(
        todo.title,
        style: todo.isDone //완료일 때 아닐 때
        ? TextStyle(
          decoration: TextDecoration.lineThrough,
          fontStyle: FontStyle.italic,
        )
        : null,
      ),
      trailing:IconButton(
        icon: Icon(Icons.delete_forever),
        onPressed: (){},
      )
    );
  }

  void _addTodo(ToDo todo) {
    setState(() {
      _items.add(todo);
      _toDoController.text = '';
    });
  }
}
