import 'package:flutter/material.dart';
import 'package:portfolio/features/home/presentation/components/home_appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: homeAppbar(context),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Text('Talk is Cheap')
      ),
    );
  }
}
