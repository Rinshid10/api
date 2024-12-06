import 'package:flutter/material.dart';
import 'package:getone/conroller/controller.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ControllerFOrnew(),
      child: MaterialApp(
        home: Homepage(),
      ),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    Future.microtask(() {
      Provider.of<ControllerFOrnew>(context, listen: false).changedatas();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<ControllerFOrnew>(
        builder: (context, value, child) {
          return ListView.builder(
            itemCount: value.getalldatas.length,
            itemBuilder: (context, index) {
              return Text(value.getalldatas[index].slug ?? 'nodaata');
            },
          );
        },
      ),
    );
  }
}
