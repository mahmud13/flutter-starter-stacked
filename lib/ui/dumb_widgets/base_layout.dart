import 'package:crowd_sourcing/generated/l10n.dart';
import 'package:crowd_sourcing/ui/dumb_widgets/base_layoutmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class BaseLayout extends StatelessWidget {
  final Widget body;
  final String appBarTitle;
  BaseLayout({Key? key, required this.body, required this.appBarTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l = S.of(context);
    return ViewModelBuilder<BaseLayoutModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text(appBarTitle),
          actions: <Widget>[
            PopupMenuButton<String>(
              onSelected: model.handleMenuItemClick,
              itemBuilder: (BuildContext context) {
                return {'Profile', 'Logout'}.map((String choice) {
                  return PopupMenuItem<String>(
                    value: choice,
                    child: Text(choice),
                  );
                }).toList();
              },
            ),
          ],
        ),
        body: body,
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(color: theme.primaryColor),
                child: Text(
                  model.currentUser?.name ?? 'Anonymous',
                  style:
                      theme.textTheme.headline5!.copyWith(color: Colors.white),
                ),
              ),
              ListTile(
                title: Text('Item 1'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => BaseLayoutModel(),
    );
  }
}
