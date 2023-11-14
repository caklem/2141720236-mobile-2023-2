import 'package:flutter/material.dart';
import 'package:week11/views/plan_creator_screen.dart';
import './views/plan_screen.dart';
import 'models/plan.dart';
import 'provider/plan_provider.dart';

void main() => runApp(const MasterPlanApp());

class MasterPlanApp extends StatelessWidget {
  const MasterPlanApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return PlanProvider(
      notifier: ValueNotifier<List<Plan>>(const []),
      child: MaterialApp(
        // debugShowCheckedModeBanner: false,
        // title: 'State management app',
        theme: ThemeData(
          primarySwatch: Colors.yellow,
        ),
        home: const PlanCreatorScreen(),
      ),
    );
  }
}
