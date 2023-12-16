import 'package:flutter/material.dart';
import 'package:maze_project/maze_widget.dart';
import 'package:maze_project/models/item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MazeScreen(),
    );
  }
}

class MazeScreen extends StatefulWidget {
  @override
  _MazeScreenState createState() => _MazeScreenState();
}

class _MazeScreenState extends State<MazeScreen> {
  List<List<bool>> userDefinedWalls = [
    [false, false, false, false],
    [true, true, true, true],
    [true, true, true, true],


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Maze(
          player: MazeItem('assets/robot.png', ImageType.asset),
          columns: 3,
          rows: 3,
          wallThickness: 4.0,
          wallColor: Theme.of(context).primaryColor,
          finish: MazeItem('assets/robot.png', ImageType.asset),
          onFinish: () => print('Hi from finish line!'),
          userDefinedWalls: userDefinedWalls,
        ),
      ),
    );
  }
}
