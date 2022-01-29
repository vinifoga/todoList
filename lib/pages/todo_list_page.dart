import 'package:flutter/material.dart';

class TodoListPage extends StatelessWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  const Expanded(
                    flex: 4,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Adicione um tarefa',
                        hintText: 'Estudar Flutter',
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xff00D7F3),
                      padding: const EdgeInsets.all(15),
                    ),
                    child: const Icon(
                      Icons.add,
                      size: 30,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16,),
              ListView(
                shrinkWrap: true,
                children: [
                  ListTile(
                    title: Text('Tarefa 1'),
                    subtitle: Text('20/11/2022'),
                    leading: Icon(Icons.save, size: 30,),
                    onTap: () {
                      print('Tarefa 1');
                    },
                  ),
                  ListTile(
                    title: Text('Tarefa 2'),
                    subtitle: Text('20/11/2022'),
                    leading: Icon(Icons.person, size: 30,),
                    onTap: () {
                      print('Tarefa 2');
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16,),
              Row(
                children: [
                  const Expanded(
                    child: Text(
                      'Você possui 0 tarefas pendentes',
                    ),
                  ),
                  const SizedBox(width: 8,),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xff00D7F3),
                      padding: const EdgeInsets.all(14),
                    ),
                    child: const Text('Limpar tudo'),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
