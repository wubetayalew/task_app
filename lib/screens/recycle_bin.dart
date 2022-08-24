import 'package:bloc2/screens/my_drawer.dart';
import 'package:flutter/material.dart';

import '../bloc/bloc_exports.dart';
import '../widget/tasks_list.dart';

class RecycleBin extends StatelessWidget {
  const RecycleBin({super.key});
  static const id = "recycle_bin_screen";
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TasksBloc, TasksState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Recycle Bin'),
            actions: [
              IconButton(onPressed: () => {}, icon: const Icon(Icons.add))
            ],
          ),
          drawer: const MyDrawer(),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 5,
              ),
              Center(
                  child:
                      Chip(label: Text("${state.removedTask.length} Tasks"))),
              TasksList(tasksList: state.removedTask),
            ],
          ),
        );
      },
    );
  }
}
