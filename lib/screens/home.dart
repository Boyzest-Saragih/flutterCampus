import 'package:fe_matkul/provider/todosModel.dart';
import 'package:fe_matkul/screens/w03.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final todosModel = Provider.of<Todosmodel>(context);
    return Scaffold(
      appBar: AppBar(title: Text("Home Screen"), backgroundColor: Colors.cyan),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: todosModel.data.length,
          itemBuilder: (BuildContext context, int index) {
            final todo = todosModel.data[index];
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            const Icon(
                              Icons.circle,
                              size: 45,
                              color: Colors.purple,
                            ),
                            Text(
                              "${index + 1}",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              todo[0],
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(todo[1], style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 4),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(6)
                          ),
                          child: Text(
                            todo[4],
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text(todo[2]),
                        Text(todo[3]),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10),
              ],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const W03Page()),
          );
        },
      ),
    );
  }
}
