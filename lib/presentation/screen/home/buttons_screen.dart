import 'package:flutter/material.dart';
import 'package:app_widgets/widgets/app_bar.dart';
import 'package:go_router/go_router.dart';

class ScreenButtons extends StatelessWidget {
  const ScreenButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: MyAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => {},
              child: Text('Elevated Button'),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text('Elevated Disabled'),
            ),
            ElevatedButton.icon(
              onPressed: () => {},
              label: Text('Elevated Icon'),
              icon: Icon(Icons.add),
            ),
            FilledButton(
              onPressed: () => {},
              child: Text('Filled Button'),
            ),
            FilledButton.icon(
              onPressed: () => {},
              label: Text('Filled Icon'),
              icon: Icon(Icons.chevron_right),
            ),
            OutlinedButton(
              onPressed: () => {},
              child: Text('Outline Button'),
            ),
            OutlinedButton.icon(
              onPressed: () => {},
              label: Text('Outline Button'),
              icon: Icon(Icons.chevron_left_rounded),
            ),
            TextButton(
              onPressed: () => {},
              child: Text('Text Button'),
            ),
            TextButton.icon(
              onPressed: () => {},
              label: Text('Text Button'),
              icon: Icon(Icons.group),
            ),
            IconButton(
              onPressed: () => {},
              icon: Icon(Icons.app_registration_rounded),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.app_registration_rounded),
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(colors.primary),
                iconColor: WidgetStatePropertyAll(Colors.white),
              ),
            )
          ],
        ),
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
