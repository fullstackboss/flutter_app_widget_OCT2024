import 'package:app_widgets/configuration/theme/menu/menu_item.dart';
import 'package:app_widgets/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final menuItem = appMenuItems[index];
        return _CustomListTile(menuItem: menuItem);
      },
    );
  }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({
    required this.menuItem,
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ListTile(
      title: Text(menuItem.mytitle),
      subtitle: Text(menuItem.mysubtitle),
      trailing: Icon(Icons.arrow_forward_ios_rounded, color: colors.primary),
      leading: Icon(menuItem.myicon, color: colors.primary),
      onTap: () => {
        context.push(menuItem.mylink),
      },
    );
  }
}
