import 'package:crowd_sourcing/ui/dumb_widgets/base_layoutmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class BaseLayout extends StatelessWidget {
  final Widget body;
  final String appBarTitle;
  final bool showDrawer;
  BaseLayout(
      {Key? key,
      required this.body,
      required this.appBarTitle,
      this.showDrawer = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
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
        drawer: showDrawer
            ? Drawer(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                    DrawerHeader(
                      decoration: BoxDecoration(color: theme.primaryColor),
                      child: Column(
                        children: [
                          Text(
                            model.currentUser?.name ?? 'Anonymous',
                            style: theme.textTheme.headline5!
                                .copyWith(color: Colors.white),
                          ),
                          Row(
                            children: [
                              ElevatedButton(
                                onPressed: () =>
                                    {model.setLocale(Locale('bn', 'BD'))},
                                child: Text('Bangla'),
                              ),
                              ElevatedButton(
                                onPressed: () =>
                                    {model.setLocale(Locale('en', 'US'))},
                                child: Text('English'),
                              )
                            ],
                          )
                        ],
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
              )
            : null,
      ),
      viewModelBuilder: () => BaseLayoutModel(),
    );
  }
}
