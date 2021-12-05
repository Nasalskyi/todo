import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String _userToDo = '';
  List todoList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    todoList.addAll(['Buy milk', 'Wash dishes']);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Список дел'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: todoList.length,
          itemBuilder: (BuildContext context, int index) {
            return Dismissible(
                key: Key(todoList[index]),
                child: Card(
                  child: ListTile(
                    title: Text(todoList[index]),
                    trailing: IconButton(
                          icon: Icon(
                            Icons.delete_sweep,
                            color: Colors.deepOrangeAccent

                          ),
                      onPressed: () {
                            setState(() {
                              todoList.removeAt(index);
                            });
                      },

                    ),
                  ),
                ),
                onDismissed: (direction){
                  //if(direction == DismissDirection.endToStart)
                  setState(() {
                    todoList.removeAt(index);
                  });
              },
            );
          }
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: (){
          showDialog(context: context, builder: (BuildContext context){
            return AlertDialog(
              title: Text('Добавить элемент'),
              content: TextField(
                onChanged: (String value){
                  _userToDo = value;
                },
              ),
              actions: [
                ElevatedButton(onPressed: (){
                  setState(() {
                    todoList.add(_userToDo);
                  });
                  Navigator.of(context).pop();
                },
                    child: Text('Добавить'))
              ],
            );
          });
        },
        child: Icon(
          Icons.add_box,
          color: Colors.white
        ),
      ),
    );
  }
}


