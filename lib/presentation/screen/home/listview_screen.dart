import 'package:flutter/material.dart';
import 'package:app_widgets/widgets/app_bar.dart';
import 'package:go_router/go_router.dart';

class ScreenListViews extends StatelessWidget {
  const ScreenListViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Center(
        child: Text('ListView'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          context.pop(),
        },
        child: Icon(Icons.chevron_left),
      ),
    );
  }
}
