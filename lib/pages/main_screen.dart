import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Главная страница'),
    centerTitle: true,
    ),
      body: Column(
        children: [
          Text('Main Screen', style: TextStyle(color: Colors.redAccent)),
          ElevatedButton(onPressed: (){
            //Navigator.pushNamedAndRemoveUntil(context,'/todo',(route) => false);
            Navigator.pushReplacementNamed(context, '/todo');
          }, child: Text('перейти далее'))
        ],
      ),

    );
  }
}

